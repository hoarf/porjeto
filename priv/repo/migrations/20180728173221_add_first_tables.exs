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
      add :parent, references(:questions)
    end

    create table(:questionaire) do
      add :name, :string
      add :version, :string, default: "1.0.0"
      add :parent, references(:questionaire)
    end

    create table(:questionaire_spec) do
      add :question_id, references(:questions)
      add :questionaire_id, references(:questionaire)
    end

    create table(:questionaire_submission) do
      add :user_id, references(:users)
      add :questionaire_id, references(:questionaire)
    end
  end
end
