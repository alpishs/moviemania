class Api::V1::SeasonsController < ApplicationController

  # GET /api/v1/seasons
  def index
  	params[:per_page] ||= 10
    params[:page] ||= 1
    @seasons = Season.all.paginate(page: params[:page], per_page: params[:per_page]).by_date
    render json: @seasons
  end
end