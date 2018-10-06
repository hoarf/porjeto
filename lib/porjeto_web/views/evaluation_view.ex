defmodule AppWeb.EvaluationView do
  use AppWeb, :view

  def render("show.json", %{evaluation: evaluation}) do
    %{data: render_one(evaluation , AppWeb.EvaluationView, "evaluation.json")}
  end

  def render("evaluation.json", %{evaluation: evaluation}) do
    %{
      questionnaire_id: 1,
      evaluation_id: evaluation.id,
      status: evaluation.status
    }
  end
end
