defmodule BUD.Index do
  require Logger
  use N2O, with: [:n2o, :kvx, :nitro]
  use FORMS
  use BPE

  def header() do
    panel(
      id: :header,
      class: :th,
      body: [
        panel(class: :column6, body: "No"),
        panel(class: :column10, body: "Name"),
        panel(class: :column6, body: "Module"),
        panel(class: :column20, body: "State"),
        panel(class: :column20, body: "Documents"),
        panel(class: :column20, body: "Manage")
      ]
    )
  end

  def event(:init) do
    NITRO.clear(:tableRow)
    NITRO.clear(:tableHead)
    NITRO.insert_top(:tableHead, BUD.Index.header())
    NITRO.clear(:frms)
    NITRO.clear(:ctrl)
    mod = BUD.Act
    NITRO.insert_bottom(:frms, FORMS.new(mod.new(mod, mod.id()), mod.id()))
    NITRO.insert_bottom(:ctrl, link(id: :creator, body: "New", postback: :create, class: [:button, :sgreen]))
    NITRO.hide(:frms)
    for i <- KVX.all(:process), do: NITRO.insert_top(:tableRow, BUD.Row.new(FORMS.atom([:row, process(i, :id)]), i))
  end

  def event({:complete, id}) do
    BPE.start(BPE.load(id), [])
    BPE.complete(id)
    IO.inspect(FORMS.atom([:tr, :row, id]))
    NITRO.update(
      FORMS.atom([:tr, :row, id]),
      BUD.Row.new(FORMS.atom([:row, id]), BPE.load(id))
    )
  end

  def event({:Spawn, _}) do
    atom = NITRO.to_atom(NITRO.q(:"process_type_pi_Elixir.BUD.Act"))

    id =
      case BPE.start(atom.def(), []) do
        {:error, i} -> i
        {:ok, i} -> i
      end

    NITRO.insert_after(:header, BUD.Row.new(FORMS.atom([:row, id]), BPE.proc(id)))
    NITRO.hide(:frms)
    NITRO.show(:ctrl)
  end

  def event({:Discard,[]}), do: [NITRO.hide(:frms), NITRO.show(:ctrl) ]
  def event({event,name}) do
    NITRO.wire(:lists.concat(["console.log(\"",:io_lib.format("~p",[{event,name}]),"\");"]))
    IO.inspect({event,name}) end
  def event(:create), do: [NITRO.hide(:ctrl), NITRO.show(:frms)]
  def event(any), do: IO.inspect(any)
end
