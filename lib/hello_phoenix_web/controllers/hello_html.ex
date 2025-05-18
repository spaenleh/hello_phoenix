defmodule HelloPhoenixWeb.HelloHTML do
  use HelloPhoenixWeb, :html

  embed_templates "hello_html/*"

  attr :messenger, :string, required: true

  def greet(assigns) do
    ~H"""
    <h2>Hello World, from <span style="color: red">{@messenger}</span>!</h2>
    """
  end
end
