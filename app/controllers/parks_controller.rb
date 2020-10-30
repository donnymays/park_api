class ParksController < ApplicationController 
  # before_action :restrict_access

  def index
    if params[:name]
      park_name = params[:name]
    end
    if params[:park_type]
      park_type_input = params[:park_type]
    end
    @parks = Park.search(park_name, park_type_input).order(:name).page(params[:page])
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def random
    @park = Park.all.sample
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update 
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "Park updated successfully"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if@park.destroy!
      render status: 200, json: {
        message: "Park deleted"
      }
    end
  end

  private
  def park_params
    params.permit(:name, :park_type, :description, :state_name, :amenities, :entrance_fee)
  end

  def restrict_access
    api_key = ApiKey.find_by_access_token(params[:access_token])
    head :unauthorized unless api_key
  end

end