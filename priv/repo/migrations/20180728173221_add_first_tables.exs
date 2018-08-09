defmodule App.Repo.Migrations.AddUserTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
    end

    create table(:questions) do
      add :type, :string
      add :description, :string
      add :answer1, :string
      add :answer2, :string
      add :answer3, :string
      add :answer4, :string
      add :answer5, :string
      add :version, :string, default: "1.0.0"
      add :parent_id, references(:questions)
    end

    create table(:questionnaires) do
      add :name, :string
      add :version, :string, default: "1.0.0"
      add :parent_id, references(:questionnaires)
    end

    create table(:questionnaire_specs) do
      add :question_id, references(:questions)
      add :questionnaire_id, references(:questionaires)
    end

    create table(:questionnaire_submissions) do
      add :user_id, references(:users)
      add :questionnaire_id, references(:questionaire)
    end
  end
end
