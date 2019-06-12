defmodule BUD.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :bud,
      version: "0.6.0",
      elixir: "~> 1.7",
      deps: deps()
    ]
  end

  def application() do
    [mod: {BUD.Application, []}]
  end

  def deps() do
    [
      {:cowboy, "~> 2.5"},
      {:rocksdb, github: "voxoz/rocks"},
      {:gproc, github: "voxoz/gproc"},
      {:n2o, github: "synrc/n2o"},
      {:kvx, github: "synrc/kvx"},
      {:nitro, github: "synrc/nitro"}
    ]
  end
end
