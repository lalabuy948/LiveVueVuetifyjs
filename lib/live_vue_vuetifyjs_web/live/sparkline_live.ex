defmodule LiveVueVuetifyjsWeb.SparklineLive do
  use LiveVueVuetifyjsWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify Sparkline</.header>

    <.vue id="sparkline" v-component="Sparkline" values={@values} v-socket={@socket} v-ssr={false} />
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :values, Enum.map(1..15, fn _ -> :rand.uniform(20) end))}
  end
end
