class FitbitAuthController < ApplicationController
  def make_request
    # The request is made to Fitbit
  end

  def get_response
    # Callback from Fitbit Oauth
    oauth_token = params[:oauth_token]
    oauth_verifier = params[:oauth_verifier]
    fitbit_data  = JSON.parse(MultiJson.encode(request.env['omniauth.auth']))

    render json:fitbit_data
  end
end
