class Dashboard::SubmissionsController < Dashboard::BaseController
  def create
    if is_not_spam?
      @submission = Submission.create(
          form_id: @form.id,
          details: submission_params
        )
    end

    redirect_to params[:redirect] || 'http://fom.io/thanks'
  end

  private
  def set_form
    @form = Form.find_by(form_id: params[:form_id])
  end

  def is_not_spam?
    params[:utf8] == 'Î²'
  end

  def submission_params
    params.except(:controller, :action, :utf8, :submit)
  end
end