class ParksController < ApplicationController 
  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  private
  def park_params
    params.permit(:name, :type_name, :description, :state_name, :amenities, :entrace_fee)
  end
end