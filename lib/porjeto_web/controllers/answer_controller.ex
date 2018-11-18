defmodule PorjetoWeb.AnswerController do
  use PorjetoWeb, :controller

  alias Porjeto.Repo
  alias Porjeto.{Evaluation}

  action_fallback(PorjetoWeb.DefaultFallbackController)

  def update(conn, params) do
    with changeset <- Evaluation.build_answer(params),
         {:ok, answer} <-
           Repo.insert(
             changeset,
             on_conflict: :replace_all,
             conflict_target: [:evaluation_id, :question_id]
           ) do
      conn
      |> put_status(:ok)
      |> render("show.json", answer: answer)
    end
  end
end
