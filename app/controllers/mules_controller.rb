class MulesController < ApplicationController
  def index

    if params[:query].present?
      @mules = PgSearch.multisearch(params[:query]).flat_map do |result|
        if result.searchable.is_a? User
          result.searchable.mules
        else
          result.searchable
        end
      end
    else
      @mules = Mule.all
      @markers = @mules.geocoded.map do |mule|
      {
        lat: mule.latitude,
        lng: mule.longitude,
        info_window: render_to_string(
          partial: "info_window",
          locals: { mule: mule }
        ),
        image_url: helpers.asset_url('mule_marker.png')
      }
      end
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
