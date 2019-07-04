defmodule BUD.Products do
  require Logger
  use N2O, with: [:n2o, :kvs, :nitro]
  use FORM
  use BPE
  require ERP

  def header() do
    panel(
      id: :header,
      class: :th,
      body: [
        panel(class: :column6, body: "Code"),
        panel(class: :column10, body: "Type"),
        panel(class: :column6, body: "People"),
        panel(class: :column20, body: "Overall"),
        panel(class: :column20, body: "Income"),
        panel(class: :column20, body: "Details")
      ]
    )
  end

  def event(:init) do
    NITRO.clear(:tableRow)
    NITRO.clear(:tableHead)
    NITRO.insert_top(:tableHead, BUD.Products.header())

   for i <- KVS.feed('/plm/products') do
      NITRO.insert_bottom(
        :tableRow,
        BUD.Product.new(FORM.atom([:row, ERP."Product"(i, :code)]), i))
    end
   end

  def event(any), do: IO.inspect(any)
end
