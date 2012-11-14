class ContractorFeaturesController < ApplicationController
  # GET /contractor_features
  # GET /contractor_features.json
  def index
    @contractor_features = ContractorFeature.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contractor_features }
    end
  end

  # GET /contractor_features/1
  # GET /contractor_features/1.json
  def show
    @contractor_feature = ContractorFeature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contractor_feature }
    end
  end

  # GET /contractor_features/new
  # GET /contractor_features/new.json
  def new
    @contractor_feature = ContractorFeature.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contractor_feature }
    end
  end

  # GET /contractor_features/1/edit
  def edit
    @contractor_feature = ContractorFeature.find(params[:id])
  end

  # POST /contractor_features
  # POST /contractor_features.json
  def create
    @contractor_feature = ContractorFeature.new(params[:contractor_feature])

    respond_to do |format|
      if @contractor_feature.save
        format.html { redirect_to @contractor_feature, notice: 'Contractor feature was successfully created.' }
        format.json { render json: @contractor_feature, status: :created, location: @contractor_feature }
      else
        format.html { render action: "new" }
        format.json { render json: @contractor_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contractor_features/1
  # PUT /contractor_features/1.json
  def update
    @contractor_feature = ContractorFeature.find(params[:id])

    respond_to do |format|
      if @contractor_feature.update_attributes(params[:contractor_feature])
        format.html { redirect_to @contractor_feature, notice: 'Contractor feature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contractor_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractor_features/1
  # DELETE /contractor_features/1.json
  def destroy
    @contractor_feature = ContractorFeature.find(params[:id])
    @contractor_feature.destroy

    respond_to do |format|
      format.html { redirect_to contractor_features_url }
      format.json { head :no_content }
    end
  end
end
