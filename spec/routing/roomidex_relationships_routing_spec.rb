require "spec_helper"

describe RoomidexRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/roomidex_relationships").should route_to("roomidex_relationships#index")
    end

    it "routes to #new" do
      get("/roomidex_relationships/new").should route_to("roomidex_relationships#new")
    end

    it "routes to #show" do
      get("/roomidex_relationships/1").should route_to("roomidex_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/roomidex_relationships/1/edit").should route_to("roomidex_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/roomidex_relationships").should route_to("roomidex_relationships#create")
    end

    it "routes to #update" do
      put("/roomidex_relationships/1").should route_to("roomidex_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/roomidex_relationships/1").should route_to("roomidex_relationships#destroy", :id => "1")
    end

  end
end
