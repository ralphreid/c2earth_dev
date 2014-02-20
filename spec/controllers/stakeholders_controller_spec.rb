require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe StakeholdersController do

  # This should return the minimal set of attributes required to create a valid
  # Stakeholder. As you add validations to Stakeholder, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "stakeholder_type_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StakeholdersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all stakeholders as @stakeholders" do
      stakeholder = Stakeholder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stakeholders).should eq([stakeholder])
    end
  end

  describe "GET show" do
    it "assigns the requested stakeholder as @stakeholder" do
      stakeholder = Stakeholder.create! valid_attributes
      get :show, {:id => stakeholder.to_param}, valid_session
      assigns(:stakeholder).should eq(stakeholder)
    end
  end

  describe "GET new" do
    it "assigns a new stakeholder as @stakeholder" do
      get :new, {}, valid_session
      assigns(:stakeholder).should be_a_new(Stakeholder)
    end
  end

  describe "GET edit" do
    it "assigns the requested stakeholder as @stakeholder" do
      stakeholder = Stakeholder.create! valid_attributes
      get :edit, {:id => stakeholder.to_param}, valid_session
      assigns(:stakeholder).should eq(stakeholder)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Stakeholder" do
        expect {
          post :create, {:stakeholder => valid_attributes}, valid_session
        }.to change(Stakeholder, :count).by(1)
      end

      it "assigns a newly created stakeholder as @stakeholder" do
        post :create, {:stakeholder => valid_attributes}, valid_session
        assigns(:stakeholder).should be_a(Stakeholder)
        assigns(:stakeholder).should be_persisted
      end

      it "redirects to the created stakeholder" do
        post :create, {:stakeholder => valid_attributes}, valid_session
        response.should redirect_to(Stakeholder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stakeholder as @stakeholder" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stakeholder.any_instance.stub(:save).and_return(false)
        post :create, {:stakeholder => { "stakeholder_type_id" => "invalid value" }}, valid_session
        assigns(:stakeholder).should be_a_new(Stakeholder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stakeholder.any_instance.stub(:save).and_return(false)
        post :create, {:stakeholder => { "stakeholder_type_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stakeholder" do
        stakeholder = Stakeholder.create! valid_attributes
        # Assuming there are no other stakeholders in the database, this
        # specifies that the Stakeholder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Stakeholder.any_instance.should_receive(:update_attributes).with({ "stakeholder_type_id" => "1" })
        put :update, {:id => stakeholder.to_param, :stakeholder => { "stakeholder_type_id" => "1" }}, valid_session
      end

      it "assigns the requested stakeholder as @stakeholder" do
        stakeholder = Stakeholder.create! valid_attributes
        put :update, {:id => stakeholder.to_param, :stakeholder => valid_attributes}, valid_session
        assigns(:stakeholder).should eq(stakeholder)
      end

      it "redirects to the stakeholder" do
        stakeholder = Stakeholder.create! valid_attributes
        put :update, {:id => stakeholder.to_param, :stakeholder => valid_attributes}, valid_session
        response.should redirect_to(stakeholder)
      end
    end

    describe "with invalid params" do
      it "assigns the stakeholder as @stakeholder" do
        stakeholder = Stakeholder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stakeholder.any_instance.stub(:save).and_return(false)
        put :update, {:id => stakeholder.to_param, :stakeholder => { "stakeholder_type_id" => "invalid value" }}, valid_session
        assigns(:stakeholder).should eq(stakeholder)
      end

      it "re-renders the 'edit' template" do
        stakeholder = Stakeholder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stakeholder.any_instance.stub(:save).and_return(false)
        put :update, {:id => stakeholder.to_param, :stakeholder => { "stakeholder_type_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stakeholder" do
      stakeholder = Stakeholder.create! valid_attributes
      expect {
        delete :destroy, {:id => stakeholder.to_param}, valid_session
      }.to change(Stakeholder, :count).by(-1)
    end

    it "redirects to the stakeholders list" do
      stakeholder = Stakeholder.create! valid_attributes
      delete :destroy, {:id => stakeholder.to_param}, valid_session
      response.should redirect_to(stakeholders_url)
    end
  end

end