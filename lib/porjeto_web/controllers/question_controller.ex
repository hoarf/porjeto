defmodule AppWeb.QuestionController do
  use AppWeb, :controller

  alias Porjeto.Evaluation

  action_fallback(AppWeb.DefaultFallbackController)

  def index(conn, %{"questionnaire_id" => questionnaire_id}) do
    with questions <- Evaluation.questions(questionnaire_id) do
      conn
      |> put_status(:ok)
      |> render("index.json", questions: questions)
    end
  end
end
