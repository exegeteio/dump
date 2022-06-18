# frozen_string_literal: true

# Functionality shared among all controllers.
class ApplicationController < ActionController::Base
  before_action :authorize_api_key!

  private
    # Authorize the api key for each request.
    def authorize_api_key!
      # This is very naive, do not do this if you care about anything!
      redirect_to "/" unless params[:api_key].presence == ENV["API_KEY"]
    end
end
