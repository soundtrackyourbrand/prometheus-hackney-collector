defmodule PrometheusHackneyCollector.MixProject do
  use Mix.Project

  def project do
    [
      app: :prometheus_hackney_collector,
      version: "0.1.0",
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
      files: ~w(lib .formatter mix.exs README* LICENSE*),
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
      {:prometheus, "~> 4.0"}
    ]
  end
end
