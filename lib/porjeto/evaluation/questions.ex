defmodule Porjeto.Evaluation.Question do

  use Ecto.Schema

  schema "questions" do
    field(:description, :string)
    field(:options, {:array, :string})
    field(:key, {:array, :boolean})
    field(:version, :string)

    many_to_many :questionnaire, Porjeto.Evaluation.Questionnaire, join_through: "questions_list"

    timestamps()
  end

end
