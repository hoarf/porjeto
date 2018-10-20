defmodule AppWeb.Schema.EvaluationTypes do
  use Absinthe.Schema.Notation

  object :evaluation do
    field :id, :id
    field :user, :user do
     resolve &AppWeb.Resolvers.Evaluation.find_user/3
    end
  end

  object :user do
    field :id, :id
    field :email, :string
  end
end
