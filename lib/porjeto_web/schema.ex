defmodule PorjetoWeb.Schema do
  use Absinthe.Schema
  import_types(PorjetoWeb.Schema.EvaluationTypes)

  alias PorjetoWeb.Resolvers

  query do
    field :evaluations, list_of(:evaluation) do
      resolve(&Resolvers.Evaluation.list_evaluations/3)
    end

    field :user, :user do
      resolve(&Resolvers.Evaluation.find_user/3)
    end
  end
end
