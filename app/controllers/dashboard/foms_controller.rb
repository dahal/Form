class Dashboard::FomsController < Dashboard::BaseController

  def new
    @form = Fom.new
  end

end
