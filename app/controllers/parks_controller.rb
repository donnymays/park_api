class ParksController < ApplicationController 
  def index
    if params[:name]
      park_name = params[:name]
    end
    if params[:type_name]
      type_name_input = params[:type_name]
    end
    @parks = Park.search(park_name, type_name_input)
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

  private
  def park_params
    params.permit(:name, :type_name, :description, :state_name, :amenities, :entrace_fee)
  end
end