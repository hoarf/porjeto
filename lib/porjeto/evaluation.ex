defmodule Porjeto.Evaluation do

  import Ecto.Query
  alias Ecto.Multi
  alias Porjeto.Evaluation.{Question, User, Evaluation}

  def create_evaluation(params) do
    with user_changeset <- User.changeset(%User{}, params) do
      %Evaluation{}
      |> Evaluation.changeset()
      |> Ecto.Changeset.put_assoc(:user, user_changeset)
    end
  end

  def questions(questionnaire_id) do
    Question
    |> join(:inner, [q], qi in assoc(q, :questionnaire))
    |> where([q, qi], qi.id == ^questionnaire_id)
  end
end
