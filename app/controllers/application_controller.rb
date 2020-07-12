class ApplicationController < ActionController::API
  require 'will_paginate/array'
  rescue_from Api::V1::UsersController::AlreadyBoughtError, with: :render_method_not_allowed
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def render_method_not_allowed(exception)
    render json: { error: exception.message }, status: 405
  end

  def render_not_found_response(exception)
    render json: { error: exception.message }, status: :not_found
  end
end
