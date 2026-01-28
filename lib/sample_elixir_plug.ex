defmodule SampleElixirPlug do
  use Application

  def start(_type, _args) do
    children = [
      %{
        id: SampleElixirPlug.AppWorker,
        start: {SampleElixirPlug.AppWorker, :start_link, [[]]},
        type: :worker,
        restart: :permanent,
        shutdown: 500
      }
    ]

    opts = [strategy: :one_for_one, name: SampleElixirPlug.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
