defmodule Porjeto.Evaluation.Answer do
  use Ecto.Schema
  import Ecto.Changeset
  alias Porjeto.Evaluation.{Question, Evaluation}

  schema "answers" do
    field(:values, {:array, :boolean})

    belongs_to(:question, Question)
    belongs_to(:evaluation, Evaluation)

    timestamps()
  end

  def changeset(answer, params \\ %{}) do
    answer
    |> cast(params, [:values])
    |> unique_constraint(:evaluation, name: :answer_evaluation_id_question_id_index)
  end
end
