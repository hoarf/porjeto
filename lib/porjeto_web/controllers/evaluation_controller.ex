defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  action_fallback(AppWeb.DefaultFallbackController)

  def new(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("show.json", questionaire: %{})
  end
end
