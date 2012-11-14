require "spec_helper"

describe ContractorFeaturesController do
  describe "routing" do

    it "routes to #index" do
      get("/contractor_features").should route_to("contractor_features#index")
    end

    it "routes to #new" do
      get("/contractor_features/new").should route_to("contractor_features#new")
    end

    it "routes to #show" do
      get("/contractor_features/1").should route_to("contractor_features#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contractor_features/1/edit").should route_to("contractor_features#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contractor_features").should route_to("contractor_features#create")
    end

    it "routes to #update" do
      put("/contractor_features/1").should route_to("contractor_features#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contractor_features/1").should route_to("contractor_features#destroy", :id => "1")
    end

  end
end
