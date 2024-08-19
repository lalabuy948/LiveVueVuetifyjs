defmodule LiveVueVuetifyjsWeb.OTPLive do
  use LiveVueVuetifyjsWeb, :live_view

  def render(assigns) do
    ~H"""
    <.header>LiveVue Vuetify OTP</.header>

    <.vue
      id="otp"
      v-component="OTP"
      correct={@correct}
      v-socket={@socket}
      v-ssr={true}
      v-on:verify={JS.push("verify")}
    />
    """
  end

  def mount(_params, _session, socket) do
    assigns = [
      otp: 1234,
      correct: false
    ]

    {:ok, assign(socket, assigns)}
  end

  def handle_event("verify", %{"value" => otp}, socket) do
    truth = otp == socket.assigns.otp

    case truth do
      true ->
        {:noreply, assign(socket, :correct, truth) |> put_flash(:info, "Great success")}

      false ->
        {:noreply,
         assign(socket, :correct, truth) |> put_flash(:error, "You failed to enter 1234")}
    end
  end
end
