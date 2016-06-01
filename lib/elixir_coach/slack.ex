defmodule ElixirCoach.Slack do
  use Slack

  @token Application.get_env(:elixir_coach, __MODULE__)[:slack_token]

  def start_link, do: start_link(@token, [])
end
