defmodule Porjeto.Evaluation.User do

  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:email, :string)
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:email])
  end
end
