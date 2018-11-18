defmodule PorjetoWeb.EvaluationView do
  use PorjetoWeb, :view

  def render("show.json", %{evaluation: evaluation}) do
    %{data: render_one(evaluation, PorjetoWeb.EvaluationView, "evaluation.json")}
  end

  def render("evaluation.json", %{evaluation: evaluation}) do
    %{
      questionnaire_id: 1,
      evaluation_id: evaluation.id,
      status: evaluation.status
    }
  end
end
