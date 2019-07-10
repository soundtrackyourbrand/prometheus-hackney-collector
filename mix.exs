defmodule PrometheusHackneyCollector.MixProject do
  use Mix.Project

  def project do
    [
      app: :prometheus_hackney_collector,
      version: "0.6.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: "https://github.com/soundtrackyourbrand/prometheus-hackney-collector"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def package do
    [
      name: "prometheus_hackney_collector",
      description: "A small collector to collect Hackney pool metrics.",
      files: ~w(lib .formatter.exs mix.exs README*),
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/soundtrackyourbrand/prometheus-hackney-collector"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:hackney, "~> 1.15"},
      {:prometheus_ex, "~> 3.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
