class MulesController < ApplicationController
  def index
    @mules = Mule.all
  end

  def show
    @mule = Mule.find(params[:id])
  end
end
