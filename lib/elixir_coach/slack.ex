defmodule ElixirCoach.Slack do
  use Slack

  @token Application.get_env(:elixir_coach, __MODULE__)[:slack_token]

  def start_link, do: start_link(@token, [])

  def handle_message(message = %{ type: "message", text: "ping" }, slack, state) do
    Slack.send_message("pong", message.channel, slack)
    IO.inspect slack
    {:ok, state}
  end

  def handle_message(message, slack, state) do
    {:ok, state}
  end


end
