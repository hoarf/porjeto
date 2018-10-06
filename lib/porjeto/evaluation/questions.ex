defmodule Porjeto.Evaluation.Question do

  use Ecto.Schema

  schema "questions" do
    field(:description, :string)
    field(:type, :string)
    field(:options, {:array, :string})
    field(:version, :string)


    many_to_many :questionnaire, Porjeto.Evaluation.Questionnaire, join_through: "questions_list"
  end

end
