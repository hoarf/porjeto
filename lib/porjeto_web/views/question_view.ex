defmodule AppWeb.QuestionView do
  use AppWeb, :view

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, AppWeb.QuestionView, "question.json")}
  end

  def render("show.json", %{question: question}) do
    %{data: render_one(question , AppWeb.QuestionView, "question.json")}
  end

  def render("question.json", %{question: question}) do
    %{
      description: question.description,
      options: question.options,
      id: question.id
    }
  end
end
