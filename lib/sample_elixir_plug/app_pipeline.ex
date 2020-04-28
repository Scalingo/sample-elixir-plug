defmodule SampleElixirPlug.AppPipeline do
  use Plug.Builder

  plug Plug.Logger
  plug SampleElixirPlug.AppPlug
end
