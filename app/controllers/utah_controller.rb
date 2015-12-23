class UtahController < ApplicationController

  def index
    @dealers = Dealer.where(state: "UT")
  end

  def show
  end


end
