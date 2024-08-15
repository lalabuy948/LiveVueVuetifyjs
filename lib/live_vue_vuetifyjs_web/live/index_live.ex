defmodule LiveVueVuetifyjsWeb.IndexLive do
  use LiveVueVuetifyjsWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify js</.header>

    <.vue id="cards" links={@links} v-component="Cards" v-socket={@socket} v-ssr={false} />
    """
  end

  def mount(_params, _session, socket) do
    links = %{
      home_page: ~p"/",
      calendar_page: ~p"/calendar",
      otp_page: ~p"/otp",
      timeline_page: ~p"/timeline",
      sparkline_page: ~p"/sparkline"
    }

    {:ok, assign(socket, :links, links)}
  end
end
