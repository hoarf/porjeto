defmodule Porjeto.Evaluation.Evaluation do
  use Ecto.Schema
  import Ecto.Changeset
  alias Porjeto.Evaluation.{User, Questionnaire}

  schema "evaluations" do
    field(:status, :string, default: "new")

    belongs_to(:questionnaire, Questionnaire)
    belongs_to(:user, User)

    timestamps()
  end

  def changeset(evaluation, params \\ %{}) do
    evaluation
    |> cast(params, [:questionnaire_id, :status])
    |> cast_assoc(:user)
  end
end
