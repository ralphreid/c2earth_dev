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

describe StructuresController do

  # This should return the minimal set of attributes required to create a valid
  # Structure. As you add validations to Structure, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "structure" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StructuresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all structures as @structures" do
      structure = Structure.create! valid_attributes
      get :index, {}, valid_session
      assigns(:structures).should eq([structure])
    end
  end

  describe "GET show" do
    it "assigns the requested structure as @structure" do
      structure = Structure.create! valid_attributes
      get :show, {:id => structure.to_param}, valid_session
      assigns(:structure).should eq(structure)
    end
  end

  describe "GET new" do
    it "assigns a new structure as @structure" do
      get :new, {}, valid_session
      assigns(:structure).should be_a_new(Structure)
    end
  end

  describe "GET edit" do
    it "assigns the requested structure as @structure" do
      structure = Structure.create! valid_attributes
      get :edit, {:id => structure.to_param}, valid_session
      assigns(:structure).should eq(structure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Structure" do
        expect {
          post :create, {:structure => valid_attributes}, valid_session
        }.to change(Structure, :count).by(1)
      end

      it "assigns a newly created structure as @structure" do
        post :create, {:structure => valid_attributes}, valid_session
        assigns(:structure).should be_a(Structure)
        assigns(:structure).should be_persisted
      end

      it "redirects to the created structure" do
        post :create, {:structure => valid_attributes}, valid_session
        response.should redirect_to(Structure.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved structure as @structure" do
        # Trigger the behavior that occurs when invalid params are submitted
        Structure.any_instance.stub(:save).and_return(false)
        post :create, {:structure => { "structure" => "invalid value" }}, valid_session
        assigns(:structure).should be_a_new(Structure)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Structure.any_instance.stub(:save).and_return(false)
        post :create, {:structure => { "structure" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested structure" do
        structure = Structure.create! valid_attributes
        # Assuming there are no other structures in the database, this
        # specifies that the Structure created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Structure.any_instance.should_receive(:update_attributes).with({ "structure" => "MyString" })
        put :update, {:id => structure.to_param, :structure => { "structure" => "MyString" }}, valid_session
      end

      it "assigns the requested structure as @structure" do
        structure = Structure.create! valid_attributes
        put :update, {:id => structure.to_param, :structure => valid_attributes}, valid_session
        assigns(:structure).should eq(structure)
      end

      it "redirects to the structure" do
        structure = Structure.create! valid_attributes
        put :update, {:id => structure.to_param, :structure => valid_attributes}, valid_session
        response.should redirect_to(structure)
      end
    end

    describe "with invalid params" do
      it "assigns the structure as @structure" do
        structure = Structure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Structure.any_instance.stub(:save).and_return(false)
        put :update, {:id => structure.to_param, :structure => { "structure" => "invalid value" }}, valid_session
        assigns(:structure).should eq(structure)
      end

      it "re-renders the 'edit' template" do
        structure = Structure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Structure.any_instance.stub(:save).and_return(false)
        put :update, {:id => structure.to_param, :structure => { "structure" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested structure" do
      structure = Structure.create! valid_attributes
      expect {
        delete :destroy, {:id => structure.to_param}, valid_session
      }.to change(Structure, :count).by(-1)
    end

    it "redirects to the structures list" do
      structure = Structure.create! valid_attributes
      delete :destroy, {:id => structure.to_param}, valid_session
      response.should redirect_to(structures_url)
    end
  end

end
