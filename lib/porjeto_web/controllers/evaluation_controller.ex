defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  alias Porjeto.Evaluation
  alias App.Repo

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, %{"email" => _email} = params) do
    with {:ok, evaluation} <- Evaluation.create_evaluation(params) |> Repo.insert_or_update do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
