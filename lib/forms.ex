defmodule BUD.Forms do
  use N2O, with: [:n2o, :nitro]
  require Logger
  def event(:init), do: []
  def event(:login), do: []
  def event(any), do: IO.inspect(any)
end
