defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, %{"user" => email} = params) do
    with evaluation <- Evaluation.create_evaluation(params) do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
