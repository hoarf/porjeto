defmodule App.Query do
  import Ecto.Query

  def by_questionnaire(query, questionnaire_id) do
    query
    |> join(:inner, [q], qi in assoc(q, :questionnaire))
    |> where([q, qi], qi.id == ^questionnaire_id)
  end
end
