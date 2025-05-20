defmodule HelloPhoenixWeb.ProductHTML do
  use HelloPhoenixWeb, :html

  embed_templates "product_html/*"

  @doc """
  Renders a product form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def product_form(assigns)

  def category_opts(changeset) do
    exisiting_ids =
      changeset
      |> Ecto.Changeset.get_change(:categories, [])
      |> Enum.map(& &1.data.id)

    for cat <- HelloPhoenix.Catalog.list_categories(),
        do: [key: cat.title, value: cat.id, selected: cat.id in exisiting_ids]
  end
end
