class FaqsController < ApplicationController
	before_action :find_faq

  def index
  	@faqs = Faq.all
  end

  def show
  end

  def new
  	@faq = Faq.new
  end

  def edit
  end

  def create
  	@faq = Faq.new(faq_params)
  	if @faq.save
  		redirect_to faqs_path, notice: %(Saved successfully.)
  	else
  		render :new
  	end
  end

  def update
  	if @faq.update(faq_params)
			redirect_to faqs_path, notice: %(Updated successfully.)
		else
			render :edit
		end
	end

  def destroy
    @faq.destroy
    redirect_to faqs_path
  end

	private

  def find_faq
    @faq = Faq.find(params[:id]) if params[:id]
  end

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end

end
