class TotalsController < ApplicationController
  def index
    @totals = Total.all
  end

  def show
    @total = Total.find(params[:id])
  end
end
