defmodule Porjeto.Evaluation.Question do

  use Ecto.Schema

  schema "questions" do
    many_to_many :questionnaire, Porjeto.Evaluation.Questionnaire, join_through: "questions_list"
  end

end
