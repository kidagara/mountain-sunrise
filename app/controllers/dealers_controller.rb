class DealersController < ApplicationController
	before_action :find_dealer

  def index
  end

  def show
  end

  def new
  	@dealer = Dealer.new
  end

  def edit
  end

  def create
  	@dealer = Dealer.new(dealer_params)
  	if @dealer.save
  		redirect_to dealers_path, notice: %(Saved "#{@dealer.store_name}" successfully.)
  	else
  		render :new
  	end
  end

  def update
  	if @dealer.update(dealer_params)
			redirect_to dealers_path, notice: %(Updated "#{@dealer.store_name}" successfully.)
		else
			render :edit
		end
	end

  def destroy
    @dealer.destroy
    redirect_to dealers_path
  end

	private

  def find_dealer
    @dealer = Dealer.find(params[:id]) if params[:id]
  end

  def dealer_params
    params.require(:dealer).permit(:store_name, :contact_name, :city, :state, :phone_number, :website)
  end

end
