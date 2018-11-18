defmodule PorjetoWeb.QuestionController do
  use PorjetoWeb, :controller

  alias Porjeto.Evaluation.Question
  alias Porjeto.{Repo, Query}

  action_fallback(PorjetoWeb.DefaultFallbackController)

  def index(conn, %{"questionnaire_id" => questionnaire_id}) do
    with query <- Query.by_questionnaire(Question, questionnaire_id),
         questions <- Repo.all(query) do
      conn
      |> put_status(:ok)
      |> render("index.json", questions: questions)
    end
  end
end
