defmodule Porjeto.Evaluation do

  alias Porjeto.Evaluation.{User, Evaluation, Answer}

  def build_evaluation(params) do
    with user_changeset <- User.changeset(%User{}, params) do
      %Evaluation{}
      |> Evaluation.changeset(Map.put(params, "questionnaire_id", 1))
      |> Ecto.Changeset.put_assoc(:user, user_changeset)
    end
  end

  def build_answer(params) do
    Answer.changeset(%Answer{}, params)
  end
end
