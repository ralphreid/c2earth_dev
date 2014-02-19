require "spec_helper"

describe StakeholderCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/stakeholder_companies").should route_to("stakeholder_companies#index")
    end

    it "routes to #new" do
      get("/stakeholder_companies/new").should route_to("stakeholder_companies#new")
    end

    it "routes to #show" do
      get("/stakeholder_companies/1").should route_to("stakeholder_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stakeholder_companies/1/edit").should route_to("stakeholder_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stakeholder_companies").should route_to("stakeholder_companies#create")
    end

    it "routes to #update" do
      put("/stakeholder_companies/1").should route_to("stakeholder_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stakeholder_companies/1").should route_to("stakeholder_companies#destroy", :id => "1")
    end

  end
end
