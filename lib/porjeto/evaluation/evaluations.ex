defmodule Porjeto.Evaluation.Evaluation do

  use Ecto.Schema
  import Ecto.Changeset
  alias Porjeto.Evaluation.{ User, Questionnaire }

  schema "evaluations" do
    belongs_to(:questionnaire, Questionnaire)
    belongs_to(:user, User)
  end

  def changeset(evaluation, params \\ %{}) do
    evaluation
    |> cast(params, [])
    |> put_change(:questionnaire_id, 1)
    |> cast_assoc(:user)
  end
end
