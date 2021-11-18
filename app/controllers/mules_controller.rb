class MulesController < ApplicationController
  def index
    @mules = Mule.all
    @markers = @mules.geocoded.map do |mule|
      {
        lat: mule.latitude,
        lng: mule.longitude,
        image_url: helpers.asset_url('mule_marker.png')
      }
    end
  end

  def show
    @mule = Mule.find(params[:id])
    @offer = Offer.new
  end

  def create
    @mule = Mule.new(mule_params)
    @mule.user = current_user
    # @mule.description = current_user.description
    if @mule.save
      redirect_to mule_path(@mule)
    else
      render "profiles/show"
    end
  end

  private

  def mule_params
    params.require(:mule).permit(:transportation_means, :rate_per_km_per_kg)
  end
end
