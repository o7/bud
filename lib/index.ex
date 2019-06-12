defmodule BUD.Index do
  use N2O, with: [:kvx, :n2o, :nitro]
  require Logger
  def event(:init), do: []
  def event(:investments), do: []
  def event(:security), do: []
  def event(:portfolio), do: []
  def event(:new), do: []

  def event(unexpected) do
    unexpected
    |> inspect()
    |> Logger.warn()
  end
end
