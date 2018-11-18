defmodule Porjeto.Guardian do
  use Guardian, otp_app: :app

  def subject_for_token(_resource, _claims) do
    sub = to_string(1)
    {:ok, sub}
  end

  def resource_from_claims(_claims) do
    resource = %Porjeto.Evaluation.User{id: 1}
    {:ok, resource}
  end
end
