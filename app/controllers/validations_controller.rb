class ValidationsController < ApplicationController
  before_action :set_queried_phone_number, only: :phone_number
  before_action :set_country_alpha2, only: :phone_number

  def phone_number
    if valid_phone_number?
      render json: { valid: true }, status: 200
    else
      render json: { valid: false }, status: 400
    end
  end

  private

  def permitted_params
    params.permit(:phone_number, :country_alpha2)
  end

  def set_queried_phone_number
    @queried_phone_number = permitted_params[:phone_number]
  end

  def set_country_alpha2
    @country_alpha2 = permitted_params[:country_alpha2]
  end

  def valid_phone_number?
    Phonelib.parse(@queried_phone_number, @country_alpha2).valid?
  end
end
