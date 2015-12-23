class AnalysisController < ApplicationController
	before_action :find_analysis

  def index
  end

  def show
  end

  def new
  	@analysis = Analysis.new
  end

  def edit
  end

  def create
  	@analysis = Analysis.new(analysis_params)
  	if @analysis.save
  		redirect_to analysis_path, notice: %(Saved "#{@analysis.date}" successfully.)
  	else
  		render :new
  	end
  end

  def update
  	if @analysis.update(analysis_params)
			redirect_to analysiss_path, notice: %(Updated "#{@analysis.date}" successfully.)
		else
			render :edit
		end
	end

  def destroy
    @analysis.destroy
    redirect_to analysis_path
  end

	private

  def find_analysis
    @analysis = Analysis.find(params[:id]) if params[:id]
  end

  def analysis_params
    params.require(:analysis).permit(:date, :analysis_product)
  end

end
