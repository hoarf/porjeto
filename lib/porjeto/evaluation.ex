defmodule Porjeto.Evaluation do

  alias Ecto.Multi
  alias Porjeto.Evaluation.Eavaluation

  def create_evaluation(user_email) do
    Multi.new
    |> Multi.insert_or_update(:user, User.changeset(user_email))
    |> Multi.insert(:evaluation, Evaluation.changeset())
  end

end
