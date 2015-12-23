class IdahoController < ApplicationController

  def index
    @dealers = Dealer.where(state: "ID")
  end

  def show
  end


end
