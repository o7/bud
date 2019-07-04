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
      name: :bud,
      links: %{"GitHub" => "https://github.com/o7/bud"}
    ]
  end

  def application() do
    [mod: {BUD.Application, []}, applications: [:ranch, :cowboy, :rocksdb, :kvs, :syn, :erp, :bpe, :n2o]]
  end

  def deps() do
    [
      {:ex_doc, "~> 0.11.0", only: :dev},
      {:cowboy, "~> 2.5.0"},
      {:rocksdb, "~> 1.2.0"},
      {:n2o, "~> 6.7.1"},
      {:syn, "~> 1.6.3"},
      {:kvs, "~> 6.7.3"},
      {:erp, "~> 0.7.3"},
      {:bpe, "~> 4.7.3"},
      {:nitro, "~> 4.7.2"},
      {:form, "~> 4.7.0"}
    ]
  end
end
