defmodule LiveVueVuetifyjsWeb.TimelineLive do
  use LiveVueVuetifyjsWeb, :live_view

  @steps [
    %{
      opposite: "1.",
      title: "BUSINESS LOGIC",
      body: "We describe the business logic of the future system,
        including potential ways of developing the system.
        Outlining key features and functionalities."
    },
    %{
      opposite: "2.",
      title: "THE NUMBERS",
      body: "We calculate the volume of data stored and the speed of their increment.
        Choosing a critical path - storing, writing or reading data?"
    },
    %{
      opposite: "3.",
      title: "DEGRADATION",
      body: "Determine the acceptable degree of degradation of the system."
    },
    %{
      opposite: "4.",
      title: "DATA",
      body: "We will construct the data movement scheme and make a
      decision which of the features of the designed system we will use."
    },
    %{
      opposite: "5.",
      title: "SCHEME",
      body: "We are designing a data storage scheme."
    }
  ]

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify Timeline</.header>

    <.vue id="timeline" v-component="Timeline" timeline={@timeline} v-socket={@socket} v-ssr={false} />
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :timeline, @steps)}
  end
end
