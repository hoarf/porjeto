defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  alias Porjeto.Evaluation

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, %{"user" => _email} = params) do
    with evaluation <- Evaluation.create_evaluation(params) |> Repo.insert_or_update do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
