class ArizonaController < ApplicationController

  def index
    @dealers = Dealer.where(state: "AZ")
  end

  def show
  end


end
