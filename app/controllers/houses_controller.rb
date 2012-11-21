class HousesController < ApplicationController
  # GET /houses
  # GET /houses.json
  def index
    @houses = House.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @houses }
    end
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
    @house = House.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @house }
    end
  end

  # GET /houses/new
  # GET /houses/new.json
  def new
    @house = House.new
    @house.build_property

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @house }
    end
  end

  # GET /houses/1/edit
  def edit
    @house = House.find(params[:id])
  end

  # POST /houses
  # POST /houses.json
  def create
    @house = House.new(params[:house])

    respond_to do |format|
      if @house.save
        format.html { redirect_to estimation_results_houses_path(@house)}
      else
        format.html { render 'estimation_form' }
      end
    end
  end


  # PUT /houses/1
  # PUT /houses/1.json
  def update
    @house = House.find(params[:id])

    respond_to do |format|
      if @house.update_attributes(params[:house])
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house = House.find(params[:id])
    @house.destroy

    respond_to do |format|
      format.html { redirect_to houses_url }
      format.json { head :no_content }
    end
  end

  def estimation_form
    @house = House.new
    @house.build_property
    @area_options = AreaBasePrice.all.collect(&:area_name)
    @feature_options =  Feature.where(upgradeable: true)


  end

  def estimation_results
    @house = House.new(params[:house])
    @current_features = params[:features]
    @missing_upgradeable_features = Feature.missing_upgradeable_features(@current_features)
    #raise "#{@features.to_yaml}" if @house

  end
end
