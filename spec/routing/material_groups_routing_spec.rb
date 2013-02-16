require "spec_helper"

describe MaterialGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/material_groups").should route_to("material_groups#index")
    end

    it "routes to #new" do
      get("/material_groups/new").should route_to("material_groups#new")
    end

    it "routes to #show" do
      get("/material_groups/1").should route_to("material_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/material_groups/1/edit").should route_to("material_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/material_groups").should route_to("material_groups#create")
    end

    it "routes to #update" do
      put("/material_groups/1").should route_to("material_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/material_groups/1").should route_to("material_groups#destroy", :id => "1")
    end

  end
end
