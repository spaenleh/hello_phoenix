# HelloPhoenix

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


## Local Setup

Run a Postgres container with podman:

```sh
podman run -d -p 5432:5432 \
        -e POSTGRES_USER=postgres \
        -e POSTGRES_DB=postgres \
        -e POSTGRES_PASSWORD="postgres" \
        --name postgres postgres:15.7-alpine
```
