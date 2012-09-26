class TotalsController < ApplicationController
  def index
    @totals = Total.all
  end

  def show
  	@total = Total.find(params[:id])
  end
  
  def new
    @total = Total.new
  end

  def create
    @total = Total.new(params[:total])
    if @total.save
      redirect_to @total, :notice => "Successfully created Total."
    else
      render :action => 'new'
    end
  end

  def edit
    @total = Total.find(params[:id])
  end

  def update
    @total = Total.find(params[:id])
    if @total.update_attributes(params[:total])
      redirect_to @total, :notice  => "Successfully updated Total."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @total = Total.find(params[:id])
    @total.destroy
    redirect_to Totals_url, :notice => "Successfully destroyed Total."
  end

  def fullindex    
    @totals = Total.all
  end

  def groupindex    
    @totals = Total.all
    @total_years = @totals.group_by { |y| y.year_id }
  end

  def salesmenindex    
    @totals = Total.all
  end

  def yearindex   
    @totals = Total.all
  end
end
