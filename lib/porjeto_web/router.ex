defmodule PorjetoWeb.Router do
  use PorjetoWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", PorjetoWeb do
    pipe_through(:api)

    resources "/evaluation", EvaluationController, only: [:create, :update] do
      patch("/answer/:question_id", AnswerController, :update)
      put("/answer/:question_id", AnswerController, :update)
    end

    resources "/questionnaire", QuestionnaireController, only: [] do
      resources("/questions", QuestionController, only: [:index])
    end
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: PorjetoWeb.Schema)

    forward("/", Absinthe.Plug, schema: PorjetoWeb.Schema)
  end
end
