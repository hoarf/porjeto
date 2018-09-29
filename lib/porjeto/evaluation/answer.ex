defmodule Porjeto.Evaluation.Answer do
  use Ecto.Schema
  import Ecto.Changeset
  alias Porjeto.Evaluation.{ Question, Evaluation }

  schema "answers" do
    field(:value, :boolean)
    belongs_to(:question, Question)
    belongs_to(:evaluation, Evaluation)
  end

  def changeset(answer, params \\ %{}) do
    answer
    |> cast(params, [])
    |> validate_required([:value, :evaluation_id, :question_id, :value])
  end
end
