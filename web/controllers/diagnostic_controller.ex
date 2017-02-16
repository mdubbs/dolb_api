defmodule DolbTest.DiagnosticController do
  use DolbTest.Web, :controller

  def heartbeat(conn, _params) do
    render conn, data: %{message: "hello world"}
  end
end
