class FloridaController < ApplicationController

  def index
    @dealers = Dealer.where(state: "FL")
  end

  def show
  end


end
