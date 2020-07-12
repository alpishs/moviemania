class Api::V1::MoviesController < ApplicationController

  # GET /api/v1/movies
  def index
    params[:per_page] ||= 10
    params[:page] ||= 1
    @movies = Movie.all.paginate(page: params[:page], per_page: params[:per_page]).by_date
    render json: @movies
  end
end