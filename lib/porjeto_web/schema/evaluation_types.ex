defmodule PorjetoWeb.Schema.EvaluationTypes do
  use Absinthe.Schema.Notation

  object :evaluation do
    field(:id, :id)

    field :score, :integer do
      resolve(&PorjetoWeb.Resolvers.Evaluation.calculate_score/3)
    end

    field :user, :user do
      resolve(&PorjetoWeb.Resolvers.Evaluation.find_user/3)
    end
  end

  object :user do
    field(:id, :id)
    field(:email, :string)
  end
end
