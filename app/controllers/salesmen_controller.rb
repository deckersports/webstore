class SalesmenController < ApplicationController
  def index
    @salesmen = Salesman.find_all_by_active(true)
  end

  def show
    @salesman = Salesman.find(params[:id])
  end
end
