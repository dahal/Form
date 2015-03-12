class Dashboard::FomsController < Dashboard::BaseController

  def new
    @form = Form.new
  end

end
