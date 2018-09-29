defmodule Porjeto.Evaluation do

  alias Porjeto.Evaluation.{User, Evaluation}

  def build_evaluation(params) do
    with user_changeset <- User.changeset(%User{}, params) do
      %Evaluation{}
      |> Evaluation.changeset()
      |> Ecto.Changeset.put_assoc(:user, user_changeset)
    end
  end
end
