defmodule BUD.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :bud,
      version: "0.6.0",
      elixir: "~> 1.7",
      description: "BUD Capital Budgeting",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc lib src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :bpe,
      links: %{"GitHub" => "https://github.com/o7/bud"}
    ]
  end

  def application() do
    [mod: {BUD.Application, []}, applications: [:ranch, :cowboy, :rocksdb, :n2o, :kvs, :syn, :bpe]]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:cowboy, "~> 2.5"},
      {:rocksdb, "~> 1.2.0"},
      {:n2o, "~> 6.6"},
      {:syn, "~> 1.6.3"},
      {:kvs, "~> 6.6"},
      {:bpe, "~> 4.6.0"},
      {:form, "~> 4.6.0"}
    ]
  end
end
