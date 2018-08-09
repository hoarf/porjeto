defmodule Porjeto.Evaluation.Questionnaires do

  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "questionnaires" do
    field(:name, :string)
    field(:version, :string)
    belongs_to(:questionnaire, __MODULE__)
    has_many :questions, through: [:questionnaire_specs, :questions]
  end

end
