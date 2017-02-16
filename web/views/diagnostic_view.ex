defmodule DolbTest.DiagnosticView do
  use DolbTest.Web, :view

  def render("heartbeat.json", %{data: data}) do
    data
  end
end
