class NevadaController < ApplicationController

  def index
    @dealers = Dealer.where(state: "NV")
  end

  def show
  end


end
