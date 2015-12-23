class ReportController < ApplicationController
	before_action :find_report

  def index
  end

  def show
  end

  def new
  	@report = Report.new
  end

  def edit
  end

  def create
  	@report = Report.new(analysis_params)
  	if @report.save
  		redirect_to analysis_path, notice: %(Saved "#{@report.date}" successfully.)
  	else
  		render :new
  	end
  end

  def update
  	if @report.update(analysis_params)
			redirect_to analysiss_path, notice: %(Updated "#{@report.date}" successfully.)
		else
			render :edit
		end
	end

  def destroy
    @report.destroy
    redirect_to analysis_path
  end

	private

  def find_report
    @report = Report.find(params[:id]) if params[:id]
  end

  def analysis_params
    params.require(:report).permit(:date, :analysis_product)
  end

end
