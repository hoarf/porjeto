defmodule PorjetoWeb.AnswerView do
  use PorjetoWeb, :view

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, PorjetoWeb.AnswerView, "answer.json")}
  end

  def render("show.json", %{answer: answer}) do
    %{data: render_one(answer, PorjetoWeb.AnswerView, "answer.json")}
  end

  def render("answer.json", %{answer: answer}) do
    %{
      question_id: answer.question_id,
      options: answer.values
    }
  end
end
