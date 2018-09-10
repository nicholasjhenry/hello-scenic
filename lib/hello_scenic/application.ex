defmodule HelloScenic.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    main_viewport_config = Application.get_env(:hello_scenic, :viewport)

    children = [
      supervisor(Scenic, viewports: [main_viewport_config])
    ]

    opts = [strategy: :one_for_one, name: HelloScenic.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
