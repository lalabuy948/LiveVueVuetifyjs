defmodule LiveVueVuetifyjs.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LiveVueVuetifyjsWeb.Telemetry,
      {DNSCluster,
       query: Application.get_env(:live_vue_vuetifyjs, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: LiveVueVuetifyjs.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: LiveVueVuetifyjs.Finch},
      # Start a worker by calling: LiveVueVuetifyjs.Worker.start_link(arg)
      # {LiveVueVuetifyjs.Worker, arg},
      # Start to serve requests, typically the last entry
      LiveVueVuetifyjsWeb.Endpoint,
      {NodeJS.Supervisor, [path: LiveVue.SSR.NodeJS.server_path(), pool_size: 4]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LiveVueVuetifyjs.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LiveVueVuetifyjsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
