defmodule AppWeb.QuestionController do
  use AppWeb, :controller

  alias Porjeto.Evaluation.Question
  alias App.{Repo, Query}

  action_fallback(AppWeb.DefaultFallbackController)

  def index(conn, %{"questionnaire_id" => questionnaire_id}) do
    with query <- Query.by_questionnaire(Question, questionnaire_id),
         questions <- Repo.all(query) do
      conn
      |> put_status(:ok)
      |> render("index.json", questions: questions)
    end
  end
end
