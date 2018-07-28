defmodule AppWeb.QuestionaireController do
  use AppWeb, :controller

  action_fallback(AppWeb.DefaultFallbackController)

  def show(conn, %{"id" => id}) do
    conn
    |> put_status(:ok)
    |> render("show.json", questionaire: %{})
  end
end
