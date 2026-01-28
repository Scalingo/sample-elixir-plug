defmodule SampleElixirPlug.AppWorker do
  def start_link(_args) do
    port = System.get_env("PORT", "3000") |> String.to_integer()
    Plug.Cowboy.http(SampleElixirPlug.AppPipeline, [], port: port)
  end
end
