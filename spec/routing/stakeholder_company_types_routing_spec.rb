require "spec_helper"

describe StakeholderCompanyTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/stakeholder_company_types").should route_to("stakeholder_company_types#index")
    end

    it "routes to #new" do
      get("/stakeholder_company_types/new").should route_to("stakeholder_company_types#new")
    end

    it "routes to #show" do
      get("/stakeholder_company_types/1").should route_to("stakeholder_company_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stakeholder_company_types/1/edit").should route_to("stakeholder_company_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stakeholder_company_types").should route_to("stakeholder_company_types#create")
    end

    it "routes to #update" do
      put("/stakeholder_company_types/1").should route_to("stakeholder_company_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stakeholder_company_types/1").should route_to("stakeholder_company_types#destroy", :id => "1")
    end

  end
end
