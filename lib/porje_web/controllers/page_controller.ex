defmodule PorjeWeb.PageController do
  use PorjeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
