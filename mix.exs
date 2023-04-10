defmodule Blogger.MixProject do
  use Mix.Project
  use HTTPoison.Base

  @url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
  def fetch_blog do
    HTTPoison.get(@url)
  end

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.12",
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
      {:httpoison,"~> 1.8"}
    ]
  end
  
  #function to take in an array of strings and return an array of uppercase strings

  def upcase_strings(strings) do
    Enum.map(strings, &String.upcase/1)
  end
end
