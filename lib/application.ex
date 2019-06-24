defmodule BUD.Application do
  use Application

  def start(_, _) do
    initialize()
    Supervisor.start_link([], strategy: :one_for_one, name: BUD.Supervisor)
  end

  def initialize() do
    :cowboy.start_tls(:http, :n2o_cowboy.env(:bud), %{env: %{dispatch: :n2o_cowboy2.points()}})
    :kvs.join()
    :syn.init()
  end
end
