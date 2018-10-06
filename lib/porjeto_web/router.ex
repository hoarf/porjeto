defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AppWeb do
    pipe_through :api

    resources "/evaluation", EvaluationController, only: [:create, :update] do
      patch "/answer/:question_id", AnswerController, :update
      put "/answer/:question_id", AnswerController, :update
    end

    resources "/questionnaire", QuestionnaireController, only: [] do
      resources "/questions", QuestionController, only: [:index]
    end
  end

end
