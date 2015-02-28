class Api::V1::SubmissionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    # Logic goes here
    require "pry"; binding.pry
    redirect_to params[:redirect]
  end
end