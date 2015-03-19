class Api::V1::SubmissionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_form
  before_action :is_not_spam?, only: [:create]
  respond_to :json

  def index
    submissions = Submission.where(form_id: @form.id).page(params[:page])

    meta = {
      meta: {
        form: @form.form_id,
        current_page: submissions.current_page,
        next_page: submissions.next_page,
        prev_page: submissions.prev_page,
        total_pages: submissions.total_pages,
        total_count: submissions.total_count
      }
    }

    respond_with submissions, meta
  end

  private
  def set_form
    @form = Form.find_by(form_id: params[:form_id])
  end
end
