defmodule SampleElixirPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :sample_elixir_plug,
      version: "1.0.0",
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SampleElixirPlug, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.0"},
      {:plug_cowboy, "~> 1.0"},
      {:cowboy, "~> 1.0"}
    ]
  end
end
