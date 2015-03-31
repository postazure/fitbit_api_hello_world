Rails.application.routes.draw do
  # Provides a button to launch auth
  root "fitbit_auth#index"

  # fitbit oauth
  post "/auth/fitbit" => "fitbit_auth#make_request"
  get "/auth/fitbit/callback" => "fitbit_auth#get_response"
end
