defmodule Telemetry.Metrics.SLS.MixProject do
  use Mix.Project

  def project do
    [
      app: :telemetry_metrics_sls,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:telemetry_metrics_prometheus_core, "~> 0.4"},
      {:ex_aliyun_sls, github: "edragonconnect/ex_aliyun_sls"}
    ]
  end
end
