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

    create table(:tests) do
      add :name, :string
      add :version, :string, default: "1.0.0"
      add :parent, references(:tests)
    end

    create table(:associated_questions) do
      add :question_id, references(:questions)
      add :test_id, references(:tests)
    end

    create table(:test_submissions) do
      add :user_id, references(:users)
      add :test_id, references(:tests)
    end
  end
end
