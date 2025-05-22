defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  def home(conn, _params) do
    conn
    |> render(:home, layout: false)
  end

  def redirect_test(conn, _options) do
    render(conn, :home, layout: false)
  end
end
