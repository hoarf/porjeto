Porjeto.Repo.insert!(
  %Porjeto.Evaluation.Questionnaire{
    id: 1,
    name: "Test Questionnaire",
    questions: [
      %Porjeto.Evaluation.Question{
        id: 1,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      },
      %Porjeto.Evaluation.Question{
        id: 2,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      },
      %Porjeto.Evaluation.Question{
        id: 3,
        description: "how many years have you been alive.",
        options: ["10", "20", "30", "40", "50"],
        key: [true, false, true, false, true]
      }
    ]
  },
  on_conflict: :nothing
)
