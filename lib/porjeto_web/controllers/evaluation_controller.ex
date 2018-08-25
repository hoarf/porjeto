defmodule AppWeb.EvaluationController do
  use AppWeb, :controller

  alias Porjeto.Evaluation

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, %{"user" => email}) do
    with evaluation <- Evaluation.create_evaluation(email) do
      conn
      |> put_status(:ok)
      |> render("show.json", evaluation: evaluation)
    end
  end
end
