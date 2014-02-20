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

describe StakeholderTypesController do

  # This should return the minimal set of attributes required to create a valid
  # StakeholderType. As you add validations to StakeholderType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "stakeholder_type" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StakeholderTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all stakeholder_types as @stakeholder_types" do
      stakeholder_type = StakeholderType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stakeholder_types).should eq([stakeholder_type])
    end
  end

  describe "GET show" do
    it "assigns the requested stakeholder_type as @stakeholder_type" do
      stakeholder_type = StakeholderType.create! valid_attributes
      get :show, {:id => stakeholder_type.to_param}, valid_session
      assigns(:stakeholder_type).should eq(stakeholder_type)
    end
  end

  describe "GET new" do
    it "assigns a new stakeholder_type as @stakeholder_type" do
      get :new, {}, valid_session
      assigns(:stakeholder_type).should be_a_new(StakeholderType)
    end
  end

  describe "GET edit" do
    it "assigns the requested stakeholder_type as @stakeholder_type" do
      stakeholder_type = StakeholderType.create! valid_attributes
      get :edit, {:id => stakeholder_type.to_param}, valid_session
      assigns(:stakeholder_type).should eq(stakeholder_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new StakeholderType" do
        expect {
          post :create, {:stakeholder_type => valid_attributes}, valid_session
        }.to change(StakeholderType, :count).by(1)
      end

      it "assigns a newly created stakeholder_type as @stakeholder_type" do
        post :create, {:stakeholder_type => valid_attributes}, valid_session
        assigns(:stakeholder_type).should be_a(StakeholderType)
        assigns(:stakeholder_type).should be_persisted
      end

      it "redirects to the created stakeholder_type" do
        post :create, {:stakeholder_type => valid_attributes}, valid_session
        response.should redirect_to(StakeholderType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stakeholder_type as @stakeholder_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        StakeholderType.any_instance.stub(:save).and_return(false)
        post :create, {:stakeholder_type => { "stakeholder_type" => "invalid value" }}, valid_session
        assigns(:stakeholder_type).should be_a_new(StakeholderType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        StakeholderType.any_instance.stub(:save).and_return(false)
        post :create, {:stakeholder_type => { "stakeholder_type" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stakeholder_type" do
        stakeholder_type = StakeholderType.create! valid_attributes
        # Assuming there are no other stakeholder_types in the database, this
        # specifies that the StakeholderType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        StakeholderType.any_instance.should_receive(:update_attributes).with({ "stakeholder_type" => "MyString" })
        put :update, {:id => stakeholder_type.to_param, :stakeholder_type => { "stakeholder_type" => "MyString" }}, valid_session
      end

      it "assigns the requested stakeholder_type as @stakeholder_type" do
        stakeholder_type = StakeholderType.create! valid_attributes
        put :update, {:id => stakeholder_type.to_param, :stakeholder_type => valid_attributes}, valid_session
        assigns(:stakeholder_type).should eq(stakeholder_type)
      end

      it "redirects to the stakeholder_type" do
        stakeholder_type = StakeholderType.create! valid_attributes
        put :update, {:id => stakeholder_type.to_param, :stakeholder_type => valid_attributes}, valid_session
        response.should redirect_to(stakeholder_type)
      end
    end

    describe "with invalid params" do
      it "assigns the stakeholder_type as @stakeholder_type" do
        stakeholder_type = StakeholderType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StakeholderType.any_instance.stub(:save).and_return(false)
        put :update, {:id => stakeholder_type.to_param, :stakeholder_type => { "stakeholder_type" => "invalid value" }}, valid_session
        assigns(:stakeholder_type).should eq(stakeholder_type)
      end

      it "re-renders the 'edit' template" do
        stakeholder_type = StakeholderType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StakeholderType.any_instance.stub(:save).and_return(false)
        put :update, {:id => stakeholder_type.to_param, :stakeholder_type => { "stakeholder_type" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stakeholder_type" do
      stakeholder_type = StakeholderType.create! valid_attributes
      expect {
        delete :destroy, {:id => stakeholder_type.to_param}, valid_session
      }.to change(StakeholderType, :count).by(-1)
    end

    it "redirects to the stakeholder_types list" do
      stakeholder_type = StakeholderType.create! valid_attributes
      delete :destroy, {:id => stakeholder_type.to_param}, valid_session
      response.should redirect_to(stakeholder_types_url)
    end
  end

end
