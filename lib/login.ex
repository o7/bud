defmodule BUD.Login do
  use N2O, with: [:n2o, :nitro]
  use FORM
  require Logger

  def event(:init) do
    NITRO.clear(:stand)
    mod = BUD.Pass
    NITRO.insert_bottom(:stand, FORM.new(mod.new(mod, mod.id()), mod.id()))
  end

  def event({:Next, _}), do: NITRO.redirect("actors.htm")
  def event({:Close, _}), do: NITRO.redirect("index.html")
  def event(any), do: IO.inspect(any)
end
