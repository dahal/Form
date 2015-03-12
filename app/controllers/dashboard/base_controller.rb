class Dashboard::BaseController < ApplicationController
  layout 'dashboard'
  before_action :authenticate_user!

  def index
    @form = Form.new
    # require "pry"; binding.pry

  end
end