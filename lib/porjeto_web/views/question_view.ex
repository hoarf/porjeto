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
      answer1: question.answer1,
      answer2: question.answer2,
      answer3: question.answer3,
      answer4: question.answer4,
      answer5: question.answer5,
    }
  end
end
