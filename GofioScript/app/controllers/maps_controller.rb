class MapsController < ApplicationController
  def show
    @attractive = Attractive.find(params[:id])

    @coffe = []
    CoffeShop.all.each do |each|
      @coffe << [each.name, each.description, each.latitude.to_f, each.longitude.to_f]
    end
  end
end
