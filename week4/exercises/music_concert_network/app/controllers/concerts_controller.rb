class ConcertsController < ApplicationController
  def index
  	today = DateTime.now
  	@concerts_this_month = Concert.where('date >= ? and date <= ?', today.beginning_of_month, today.end_of_month)
  	@concerts_other_months = Concert.where('date > ?', today.end_of_month)
  end

  def new
  end

  def show
  	@concert = Concert.find_by(id: params[:id])
  end
end
