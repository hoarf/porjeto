defmodule Porjeto.Query do
  import Ecto.Query

  def by_questionnaire(query, questionnaire_id) do
    query
    |> join(:inner, [q], qi in assoc(q, :questionnaire))
    |> where([q, qi], qi.id == ^questionnaire_id)
  end

  def by_evaluation(query, evaluation_id) do
    query
    |> join(:inner, [u], ui in assoc(u, :evaluation))
    |> where([u, ui], ui.id == ^evaluation_id)
  end
end
