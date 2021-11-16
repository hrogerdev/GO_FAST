class MulesController < ApplicationController
  def index
    @mules = Mule.all
  end
end
