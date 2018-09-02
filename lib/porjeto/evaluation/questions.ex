defmodule Porjeto.Evaluation.Question do

  use Ecto.Schema

  schema "questions" do
    field(:description, :string)
    field(:type, :string)
    field(:answer1, :string)
    field(:answer2, :string)
    field(:answer3, :string)
    field(:answer4, :string)
    field(:answer5, :string)
    field(:version, :string)


    many_to_many :questionnaire, Porjeto.Evaluation.Questionnaire, join_through: "questions_list"
  end

end
