require "spec_helper"

describe RealtorsController do
  describe "routing" do

    it "routes to #index" do
      get("/realtors").should route_to("realtors#index")
    end

    it "routes to #new" do
      get("/realtors/new").should route_to("realtors#new")
    end

    it "routes to #show" do
      get("/realtors/1").should route_to("realtors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/realtors/1/edit").should route_to("realtors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/realtors").should route_to("realtors#create")
    end

    it "routes to #update" do
      put("/realtors/1").should route_to("realtors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/realtors/1").should route_to("realtors#destroy", :id => "1")
    end

  end
end
