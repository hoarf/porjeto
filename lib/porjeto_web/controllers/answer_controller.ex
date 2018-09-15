defmodule AppWeb.AnswerController do
  use AppWeb, :controller

  alias App.Repo

  action_fallback(AppWeb.DefaultFallbackController)

  def create(conn, %{"evaluation_id" => evaluation_id, "question_id" => question_id, "value" => value} = params) do
    with {:ok, answer} <- Evaluation.create_or_update_answer(evaluation_id, question_id, value) |> Repo.insert_or_update do
      conn
      |> put_status(:ok)
      |> render("show.json", answer: answer)
    end
  end
end
