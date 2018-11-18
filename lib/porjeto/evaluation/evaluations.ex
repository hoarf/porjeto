defmodule Porjeto.Evaluation.Evaluation do
  use Ecto.Schema
  import Ecto.Changeset
  alias Porjeto.Evaluation.{User, Questionnaire, Answer}

  schema "evaluations" do
    field(:status, :string, default: "new")

    belongs_to(:questionnaire, Questionnaire)
    belongs_to(:user, User)
    has_many(:answers, Answer)

    timestamps()
  end

  def changeset(evaluation, params \\ %{}) do
    evaluation
    |> cast(params, [:status])
    |> cast_assoc(:user)
  end
end
