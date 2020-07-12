class Api::V1::MoviesAndSeasonsController < ApplicationController

  # GET /api/v1/movies_and_seasons
  def index
	params[:per_page] ||= 10
    params[:page] ||= 1
    @movies_seasons = (Movie.all + Season.all).paginate(page: params[:page], per_page: params[:per_page]).sort_by(&:created_at).reverse!
    render json: @movies_seasons
  end
end