class OffersController < ApplicationController

  before_action :set_mule, only: %i[new create]

  def show
    @offer = Offer.find(params[:id])
  end

  def new; end

  def create
    @offer.user = current_user
    from = Geocoder.coordinates(@offer.starting_point)
    to = Geocoder.coordinates(@offer.destination)
    @offer.distance = Geocoder::Calculations.distance_between(from, to).to_i
    @offer.commission = (@offer.weight + @offer.distance) * @mule.rate_per_km_per_kg

    if @offer.save
      redirect_to(mules_path)
      flash[:alert] = "Your offer has been sent"
    else
      render 'mules/show'
    end
  end

  def refused
    @offer = Offer.find(params[:id])
    @offer.status = "refused"
    @offer.save
    redirect_to profile_path
    flash[:alert] = "Offer has been rejected."
  end

  def accepted
    @offer = Offer.find(params[:id])
    @offer.status = "accepted"
    @offer.save
    redirect_to profile_path
    flash[:alert] = "Congrats! You accepted the offer"
  end

  def distance
    from = Geocoder.coordinates(params[:starting_point])
    to = Geocoder.coordinates(params[:destination])
    distance = Geocoder::Calculations.distance_between(from, to).to_i

    render json: { distance: distance }
  end

  private

  def offer_params
    params.require(:offer).permit(:destination, :weight, :drug_type, :starting_point)
  end

  def set_mule
    @mule = Mule.find(params[:mule_id])
    @offer = Offer.new(offer_params)
    @offer.mule = @mule
  end
end
