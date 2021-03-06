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

describe ContractorFeaturesController do

  # This should return the minimal set of attributes required to create a valid
  # ContractorFeature. As you add validations to ContractorFeature, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContractorFeaturesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all contractor_features as @contractor_features" do
      contractor_feature = ContractorFeature.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contractor_features).should eq([contractor_feature])
    end
  end

  describe "GET show" do
    it "assigns the requested contractor_feature as @contractor_feature" do
      contractor_feature = ContractorFeature.create! valid_attributes
      get :show, {:id => contractor_feature.to_param}, valid_session
      assigns(:contractor_feature).should eq(contractor_feature)
    end
  end

  describe "GET new" do
    it "assigns a new contractor_feature as @contractor_feature" do
      get :new, {}, valid_session
      assigns(:contractor_feature).should be_a_new(ContractorFeature)
    end
  end

  describe "GET edit" do
    it "assigns the requested contractor_feature as @contractor_feature" do
      contractor_feature = ContractorFeature.create! valid_attributes
      get :edit, {:id => contractor_feature.to_param}, valid_session
      assigns(:contractor_feature).should eq(contractor_feature)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ContractorFeature" do
        expect {
          post :create, {:contractor_feature => valid_attributes}, valid_session
        }.to change(ContractorFeature, :count).by(1)
      end

      it "assigns a newly created contractor_feature as @contractor_feature" do
        post :create, {:contractor_feature => valid_attributes}, valid_session
        assigns(:contractor_feature).should be_a(ContractorFeature)
        assigns(:contractor_feature).should be_persisted
      end

      it "redirects to the created contractor_feature" do
        post :create, {:contractor_feature => valid_attributes}, valid_session
        response.should redirect_to(ContractorFeature.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contractor_feature as @contractor_feature" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContractorFeature.any_instance.stub(:save).and_return(false)
        post :create, {:contractor_feature => {}}, valid_session
        assigns(:contractor_feature).should be_a_new(ContractorFeature)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContractorFeature.any_instance.stub(:save).and_return(false)
        post :create, {:contractor_feature => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contractor_feature" do
        contractor_feature = ContractorFeature.create! valid_attributes
        # Assuming there are no other contractor_features in the database, this
        # specifies that the ContractorFeature created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContractorFeature.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => contractor_feature.to_param, :contractor_feature => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested contractor_feature as @contractor_feature" do
        contractor_feature = ContractorFeature.create! valid_attributes
        put :update, {:id => contractor_feature.to_param, :contractor_feature => valid_attributes}, valid_session
        assigns(:contractor_feature).should eq(contractor_feature)
      end

      it "redirects to the contractor_feature" do
        contractor_feature = ContractorFeature.create! valid_attributes
        put :update, {:id => contractor_feature.to_param, :contractor_feature => valid_attributes}, valid_session
        response.should redirect_to(contractor_feature)
      end
    end

    describe "with invalid params" do
      it "assigns the contractor_feature as @contractor_feature" do
        contractor_feature = ContractorFeature.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContractorFeature.any_instance.stub(:save).and_return(false)
        put :update, {:id => contractor_feature.to_param, :contractor_feature => {}}, valid_session
        assigns(:contractor_feature).should eq(contractor_feature)
      end

      it "re-renders the 'edit' template" do
        contractor_feature = ContractorFeature.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContractorFeature.any_instance.stub(:save).and_return(false)
        put :update, {:id => contractor_feature.to_param, :contractor_feature => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contractor_feature" do
      contractor_feature = ContractorFeature.create! valid_attributes
      expect {
        delete :destroy, {:id => contractor_feature.to_param}, valid_session
      }.to change(ContractorFeature, :count).by(-1)
    end

    it "redirects to the contractor_features list" do
      contractor_feature = ContractorFeature.create! valid_attributes
      delete :destroy, {:id => contractor_feature.to_param}, valid_session
      response.should redirect_to(contractor_features_url)
    end
  end

end
