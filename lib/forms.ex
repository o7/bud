defmodule BUD.Forms do
  use N2O, with: [:n2o, :nitro]
  require Logger
  def event(:init), do: []
  def event(:login), do: []

  def event(unexpected) do
    unexpected
    |> inspect()
    |> Logger.warn()
  end
end
