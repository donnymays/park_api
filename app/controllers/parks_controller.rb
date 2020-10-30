class ParksController < ApplicationController 
  def index
    if params[:name]
      park_name = params[:name]
    end
    if params[:park_type]
      park_type_input = params[:park_type]
    end
    @parks = Park.search(park_name, park_type_input)
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

  private
  def park_params
    params.permit(:name, :park_type, :description, :state_name, :amenities, :entrance_fee)
  end
end