defmodule App.Guardian do
  use Guardian, otp_app: :app

  def subject_for_token(resource, _claims) do
    sub = to_string(1)
    {:ok, sub}
  end

  def subject_for_token(_, _) do
    {:error, :reason_for_error}
  end

  def resource_from_claims(claims) do
    id = claims["sub"]
    resource = %App.Users{id: 1}
    {:ok,  resource}
  end

  def resource_from_claims(_claims) do
    {:error, :reason_for_error}
  end
end
