class Api::V1::SubmissionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_form
  before_action :is_not_spam?, only: [:create]

  def index
    @submissions = Submission.where(form_id: @form.id)
    render json: @submissions
  end

  def create
    if is_not_spam?
      @submission = Submission.create(
          form_id: @form.id,
          details: submission_params
        )
    end

    redirect_to params[:redirect] || 'http://facebook.com'
  end

  private
  def set_form
    @form = Fom.find_by(form_id: params[:form_id] || params[:fom_id])
  end

  def is_not_spam?
    params[:utf8] == 'Î²'
  end

  def submission_params
    params.except(:controller, :action, :utf8, :submit)
  end
end
