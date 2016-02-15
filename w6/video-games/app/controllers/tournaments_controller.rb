class TournamentsController < ApplicationController
  def index
  end

  def list
  	tournaments = Tournament.all
  	render json: tournaments
  end

  def create
  	tournament = Tournament.create(tournament_params)
  	render json: tournament
  end

  def destroy
  	tournament = Tournament.find_by(id: params[:id])
  	tournament.destroy
  	render json: tournament
  end


  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end

end
