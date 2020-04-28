defmodule SampleElixirPlug.AppPlug do
  import Plug.Conn

  def init(options) do
    # initialize options

    options
  end

  def call(conn, _opts) do
    {:ok, body} = Path.expand("templates/index.html", File.cwd!) |> File.read

    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, body)
  end
end
