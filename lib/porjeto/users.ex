defmodule App.Users do
  use Ecto.Schema

  alias Porjeto.Evaluation.{Evaluation}
  schema "users" do
    has_one(:evaluation, Evaluation)
  end
end
