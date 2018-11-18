defmodule Porjeto.Evaluation do
  alias Porjeto.Evaluation.{User, Evaluation, Answer}
  alias Porjeto.Repo

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

  def list_evaluations() do
    Evaluation |> Repo.all()
  end

  def find_user(%Evaluation{} = evaluation) do
    Repo.preload(evaluation, :user).user
  end

  def calculate_score(%Evaluation{} = evaluation) do
    eval = Repo.preload(evaluation, answers: [:question])

    eval.answers
    |> Enum.map(fn answer ->
      IO.inspect(answer)

      answer.values
      |> Enum.zip(answer.question.key)
      |> Enum.map(fn {a, key} -> a == key end)
      |> Enum.map(&((&1 && 1) || 0))
      |> Enum.sum()
    end)
    |> Enum.sum()
  end
end
