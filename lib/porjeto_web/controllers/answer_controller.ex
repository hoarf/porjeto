defmodule AppWeb.AnswerController do
  use AppWeb, :controller

  alias App.Repo
  alias Porjeto.{Evaluation}

  action_fallback(AppWeb.DefaultFallbackController)

  def update(conn, params) do
    with answer <- Evaluation.build_answer(params),
         result <- Repo.insert_or_update(answer) do
      conn
      |> put_status(:ok)
      |> render("show.json", answer: result)
    end
  end
end
