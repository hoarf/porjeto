defmodule Porjeto.Evaluation.Questionnaire do
  use Ecto.Schema

  schema "questionnaires" do
    field(:name, :string)
    field(:version, :string)
    belongs_to(:parent, __MODULE__)
    many_to_many(:questions, Porjeto.Evaluation.Question, join_through: "questions_list")

    timestamps()
  end
end
