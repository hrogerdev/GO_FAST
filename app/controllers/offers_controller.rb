class OffersController < ApplicationController

  def new
    @mule = Mule.find(params[:mule_id])
    @offer = Offer.new(offer_params)
    @offer.mule = @mule
  end

  def create
    @mule = Mule.find(params[:mule_id])
    @offer = Offer.new(offer_params)
    @offer.mule = @mule
    @offer.commission = (@offer.weight + @offer.distance) * @mule.rate_per_km_per_kg
    @offer.user = current_user

    if @offer.save!
      redirect_to(mules_path)
      flash[:alert] = "Your offer has been sent"
    else
      render 'mules/show'
    end
  end

  def refused
    @offer = Offer.find(params[:id])
    if @offer.user != current_user
      @offer.status = "refused"
      @offer.save
    end

    redirect_to profile_path
    flash[:alert] = "Offer has been rejected."
  end

  def accepted
    @offer = Offer.find(params[:id])
    if @offer.user != current_user
      @offer.status = "accepted"
      @offer.save
    end
    redirect_to profile_path
    flash[:alert] = "Congrats! You accepted the offer"

  end

  private

  def offer_params
    params.require(:offer).permit(:destination, :weight, :drug_type, :starting_point, :distance)
  end
end
