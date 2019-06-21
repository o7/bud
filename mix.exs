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
      {:forms, github: "synrc/forms"},
      {:bpe, github: "synrc/bpe"},
      {:n2o, github: "synrc/n2o"}
    ]
  end
end
