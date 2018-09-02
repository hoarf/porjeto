defmodule Porjeto.Evaluation.Questionnaire do

  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "questionnaires" do
    field(:name, :string)
    field(:version, :string)
    belongs_to(:parent, __MODULE__)
    many_to_many :questions, Porjeto.Evaluation.Question, join_through: "questions_list"
  end

end
