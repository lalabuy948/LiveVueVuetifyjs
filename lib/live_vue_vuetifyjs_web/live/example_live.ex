defmodule LiveVueVuetifyjsWeb.ExampleLive do
  use LiveVueVuetifyjsWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify Calendar</.header>
    <.vue id="calendar" v-component="Calendar" v-socket={@socket} v-ssr={true} />
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
