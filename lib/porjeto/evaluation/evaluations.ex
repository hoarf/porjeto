defmodule Porjeto.Evaluation.Evaluations do

  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "questionnaires" do
    belongs_to(:questionnaire, Questionnaire)
    belongs_to(:user, User)
  end

  def changeset(evaluation, params \\ %{}) do
    evaluation
    |> cast(params, [:user_id])
  end
end
