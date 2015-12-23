class CaliforniaController < ApplicationController

  def index
    @dealers = Dealer.where(state: "CA")
  end

  def show
  end


end
