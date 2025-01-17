class Api::V1::UsersController < ApplicationController

  before_action :set_user
  before_action :set_purchase_option_for_user, only: [:purchase]

  class AlreadyBoughtError < StandardError; end

  # POST /api/v1/users/:id/purchase
  # Params: { "purchase_option_id": 2 }
  def purchase
    raise AlreadyBoughtError if @user.is_in_library?(@purchase_option.content)
    @user.purchases << Purchase.create(purchase_option: @purchase_option)
    render json: @user.library
  end

  # GET /api/v1/users/:id/purchases
  def purchases
    render json: @user.library
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_purchase_option_for_user
    @purchase_option = PurchaseOption.find(params[:purchase_option_id])    
  end
end