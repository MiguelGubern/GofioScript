class MapsController < ApplicationController
  def show
    @attractive = Attractive.find(params[:id])
  end
end
