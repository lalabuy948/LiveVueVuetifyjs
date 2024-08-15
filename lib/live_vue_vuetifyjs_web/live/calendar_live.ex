defmodule LiveVueVuetifyjsWeb.CalendarLive do
  use LiveVueVuetifyjsWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify Calendar</.header>

    <div class="pb-60">
      <.vue id="calendar" v-component="Calendar" v-socket={@socket} v-ssr={true} />
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
