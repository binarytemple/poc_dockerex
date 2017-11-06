defmodule PocDockerex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :poc_dockerex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "file:///root/dockerex", branch: "master"}
      {:dockerex, git: "https://github.com/bryanhuntesl/dockerex.git", branch: "master"}
    ]
  end
end
