class ColoradoController < ApplicationController

  def index
    @dealers = Dealer.where(state: "CO")
  end

  def show
  end


end
