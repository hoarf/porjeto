defmodule AppWeb.Resolvers.Evaluation do

  def list_evaluations(_parent, _args, _resolution) do
    {:ok, Porjeto.Evaluation.list_evaluations()}
  end

  def find_user(%Porjeto.Evaluation.Evaluation{} = evaluation, _args, _resolution) do
    {:ok, Porjeto.Evaluation.find_user(evaluation)}
  end
end
