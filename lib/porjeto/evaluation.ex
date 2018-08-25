defmodule Porjeto.Evaluation do

  import Ecto.Query
  alias Ecto.Multi
  alias Porjeto.Evaluation.{Question, User }
  alias App.Repo

  def create_evaluation(params) do
    Multi.new
    |> Multi.insert_or_update(:user, User.changeset(User, params))
    |> Multi.insert(:evaluation, %{user: User.changeset(User, params)})
    |> Repo.transaction
  end

  def questions(questionnaire_id) do
    Question
    |> join(:inner, [q], qi in assoc(q, :questionnaire))
    |> where([q, qi], qi.id == ^questionnaire_id)
    |> Repo.all
  end
end
