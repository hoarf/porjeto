alias Porjeto.Evaluation.{Evaluation, Question, Answer, Questionnaire, User}

Porjeto.Repo.insert!(
  %Questionnaire{
    id: 1,
    name: "Test Questionnaire",
    questions: [
      %Question{
        id: 1,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      },
      %Question{
        id: 2,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      },
      %Question{
        id: 3,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      }
    ]
  },
  on_conflict: :nothing
)

Porjeto.Repo.insert!(
  %Evaluation{
    id: 1,
    answers: [
      %Answer{
        id: 1,
        question_id: 1,
        values: [true, true, false, false, true]
      }
    ],
    questionnaire_id: 1,
    user: %User{
      id: 1,
      email: "alan.ficagna@gmail.com"
    }
  },
  on_conflict: :nothing
)
