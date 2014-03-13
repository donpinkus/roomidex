require "spec_helper"

describe RoomidexRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/roomidex_requests").should route_to("roomidex_requests#index")
    end

    it "routes to #new" do
      get("/roomidex_requests/new").should route_to("roomidex_requests#new")
    end

    it "routes to #show" do
      get("/roomidex_requests/1").should route_to("roomidex_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/roomidex_requests/1/edit").should route_to("roomidex_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/roomidex_requests").should route_to("roomidex_requests#create")
    end

    it "routes to #update" do
      put("/roomidex_requests/1").should route_to("roomidex_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/roomidex_requests/1").should route_to("roomidex_requests#destroy", :id => "1")
    end

  end
end
