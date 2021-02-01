class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
  
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:birde, :location]
    }
    render json: SightingSerializer.new(sighting)
  end
end
