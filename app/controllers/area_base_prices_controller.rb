class AreaBasePricesController < ApplicationController
  # GET /area_base_prices
  # GET /area_base_prices.json
  def index
    @area_base_prices = AreaBasePrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @area_base_prices }
    end
  end

  # GET /area_base_prices/1
  # GET /area_base_prices/1.json
  def show
    @area_base_price = AreaBasePrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @area_base_price }
    end
  end

  # GET /area_base_prices/new
  # GET /area_base_prices/new.json
  def new
    @area_base_price = AreaBasePrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @area_base_price }
    end
  end

  # GET /area_base_prices/1/edit
  def edit
    @area_base_price = AreaBasePrice.find(params[:id])
  end

  # POST /area_base_prices
  # POST /area_base_prices.json
  def create
    @area_base_price = AreaBasePrice.new(params[:area_base_price])

    respond_to do |format|
      if @area_base_price.save
        format.html { redirect_to @area_base_price, notice: 'Area base price was successfully created.' }
        format.json { render json: @area_base_price, status: :created, location: @area_base_price }
      else
        format.html { render action: "new" }
        format.json { render json: @area_base_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /area_base_prices/1
  # PUT /area_base_prices/1.json
  def update
    @area_base_price = AreaBasePrice.find(params[:id])

    respond_to do |format|
      if @area_base_price.update_attributes(params[:area_base_price])
        format.html { redirect_to @area_base_price, notice: 'Area base price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @area_base_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_base_prices/1
  # DELETE /area_base_prices/1.json
  def destroy
    @area_base_price = AreaBasePrice.find(params[:id])
    @area_base_price.destroy

    respond_to do |format|
      format.html { redirect_to area_base_prices_url }
      format.json { head :no_content }
    end
  end
end
