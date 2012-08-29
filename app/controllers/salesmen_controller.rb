class SalesmenController < ApplicationController
  def index
    @salesmen = Salesman.all
  end

  def show
    @salesman = Salesman.find(params[:id])
  end
end
