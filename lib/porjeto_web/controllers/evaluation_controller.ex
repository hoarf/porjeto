defmodule PorjetoWeb.EvaluationController do
  use PorjetoWeb, :controller

  alias Porjeto.Evaluation
  alias Porjeto.Repo

  action_fallback(PorjetoWeb.DefaultFallbackController)

  def create(conn, params) do
    with {:ok, evaluation} <- Evaluation.build_evaluation(params) |> Repo.insert() do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end

  def update(conn, params) do
    with {:ok, evaluation} <-
           Evaluation.build_evaluation(params)
           |> Repo.insert(on_conflict: :replace_all, conflict_target: :id) do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
