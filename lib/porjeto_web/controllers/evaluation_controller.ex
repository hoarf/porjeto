defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  alias Porjeto.Evaluation
  alias App.Repo

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, params) do
    with {:ok, evaluation} <- Evaluation.build_evaluation(params) |> Repo.insert do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
