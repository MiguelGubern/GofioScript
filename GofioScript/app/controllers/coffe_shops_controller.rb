require 'csv'
class CoffeShopsController < ApplicationController
  before_action :set_coffe_shop, only: [:show, :edit, :update, :destroy]

  def loadCoffeShopsFromCsv
    csvFile = File.read("coffeeShops.csv")
    CSV.parse(csvFile, { headers: true, col_sep: "#" }).each do | row |
      currentType = Type.getTypeIdFromType row["TIPO"]
      CoffeShop.create(name: row["NOMBRE"], description: row["DESCRIPCION"], latitude: row["LATITUD"], longitude: row["LONGITUD"])
    end
  end
  # GET /coffe_shops
  # GET /coffe_shops.json
  def index
    @coffe_shops = CoffeShop.all
  end

  # GET /coffe_shops/1
  # GET /coffe_shops/1.json
  def show
  end

  # GET /coffe_shops/new
  def new
    @coffe_shop = CoffeShop.new
  end

  # GET /coffe_shops/1/edit
  def edit
  end

  # POST /coffe_shops
  # POST /coffe_shops.json
  def create
    @coffe_shop = CoffeShop.new(coffe_shop_params)

    respond_to do |format|
      if @coffe_shop.save
        format.html { redirect_to @coffe_shop, notice: 'Coffe shop was successfully created.' }
        format.json { render :show, status: :created, location: @coffe_shop }
      else
        format.html { render :new }
        format.json { render json: @coffe_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffe_shops/1
  # PATCH/PUT /coffe_shops/1.json
  def update
    respond_to do |format|
      if @coffe_shop.update(coffe_shop_params)
        format.html { redirect_to @coffe_shop, notice: 'Coffe shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffe_shop }
      else
        format.html { render :edit }
        format.json { render json: @coffe_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffe_shops/1
  # DELETE /coffe_shops/1.json
  def destroy
    @coffe_shop.destroy
    respond_to do |format|
      format.html { redirect_to coffe_shops_url, notice: 'Coffe shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffe_shop
      @coffe_shop = CoffeShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffe_shop_params
      params.require(:coffe_shop).permit(:name, :description, :latitude, :longitude)
    end
end
