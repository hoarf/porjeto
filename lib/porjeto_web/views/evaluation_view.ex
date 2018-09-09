defmodule AppWeb.EvaluationView do
  use AppWeb, :view

  def render("show.json", %{evaluation: evaluation}) do
    %{
      questionnaire_id: 1,
      evaluation_id: evaluation.id
    }
  end
end
