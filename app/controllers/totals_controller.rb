class TotalsController < ApplicationController
  def index
    @totals = Total.all
  end

  def show
  	@total = Total.find(params[:id])
  end
  
  def new
    @totals = Total.new
  end

  def create
    @totals = Total.new(params[:totals])
    if @totals.save
      redirect_to @totals, :notice => "Successfully created Total."
    else
      render :action => 'new'
    end
  end

  def edit
    @totals = Total.find(params[:id])
  end

  def update
    @totals = Total.find(params[:id])
    if @totals.update_attributes(params[:totals])
      redirect_to @totals, :notice  => "Successfully updated Total."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @totals = Total.find(params[:id])
    @totals.destroy
    redirect_to Totals_url, :notice => "Successfully destroyed Total."
  end

  def fullindex    
    @totals = Total.all
  end

  def groupindex    
    @totals = Total.all
    @totals_years = @totals.group_by { |y| y.year_id }
    @totals_salesmen = @totals_years.group_by { |s| s.salesman_id }
  end

  def salesmenindex    
    @totals = Total.all
  end

  def yearindex   
    @totals = Total.all
  end
end
