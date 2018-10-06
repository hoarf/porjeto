defmodule App.Repo.Migrations.AddUserTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string

      timestamps()
    end

    create table(:questions) do
      add :type, :string
      add :description, :string
      add :options, {:array, :string}
      add :version, :string, default: "1.0.0"
      add :parent_id, references(:questions)

      timestamps()
    end

    create table(:questionnaires) do
      add :name, :string
      add :version, :string, default: "1.0.0"
      add :parent_id, references(:questionnaires)

      timestamps()
    end

    create table(:questions_list) do
      add :question_id, references(:questions)
      add :questionnaire_id, references(:questionnaires)

    end

    create table(:evaluations) do
      add :user_id, references(:users)
      add :questionnaire_id, references(:questionnaires)
      add :status, :string, default: "new"

      timestamps()
    end

    create table(:answers) do
      add :evaluation_id, references(:evaluations)
      add :question_id, references(:questions)
      add :duration, :int
      add :order, :int
      add :values, {:array, :boolean}

      timestamps()
    end

    create unique_index(:answers, [:evaluation_id, :question_id])
  end
end
