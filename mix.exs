defmodule HelloScenic.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_scenic,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {HelloScenic.Application, []}
    ]
  end

  defp deps do
    [
      {:scenic, "~> 0.7.0"},
      {:scenic_driver_glfw, "~> 0.7.0"}
    ]
  end
end
