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

describe MlogEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # MlogEntry. As you add validations to MlogEntry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "partner_code" => "771cea7a-303d-4082-aa37-48d4f11c1c07" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MlogEntriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mlog_entries as @mlog_entries" do
      mlog_entry = MlogEntry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:mlog_entries).should eq([mlog_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested mlog_entry as @mlog_entry" do
      mlog_entry = MlogEntry.create! valid_attributes
      get :show, {:id => mlog_entry.to_param}, valid_session
      assigns(:mlog_entry).should eq(mlog_entry)
    end
  end

  describe "GET new" do
    it "assigns a new mlog_entry as @mlog_entry" do
      get :new, {}, valid_session
      assigns(:mlog_entry).should be_a_new(MlogEntry)
    end
  end

  describe "GET edit" do
    it "assigns the requested mlog_entry as @mlog_entry" do
      mlog_entry = MlogEntry.create! valid_attributes
      get :edit, {:id => mlog_entry.to_param}, valid_session
      assigns(:mlog_entry).should eq(mlog_entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MlogEntry" do
        expect {
          post :create, {:mlog_entry => valid_attributes}, valid_session
        }.to change(MlogEntry, :count).by(1)
      end

      it "assigns a newly created mlog_entry as @mlog_entry" do
        post :create, {:mlog_entry => valid_attributes}, valid_session
        assigns(:mlog_entry).should be_a(MlogEntry)
        assigns(:mlog_entry).should be_persisted
      end

      it "redirects to the created mlog_entry" do
        post :create, {:mlog_entry => valid_attributes}, valid_session
        response.should redirect_to(MlogEntry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mlog_entry as @mlog_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        MlogEntry.any_instance.stub(:save).and_return(false)
        post :create, {:mlog_entry => { "partner_code" => "invalid value" }}, valid_session
        assigns(:mlog_entry).should be_a_new(MlogEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MlogEntry.any_instance.stub(:save).and_return(false)
        post :create, {:mlog_entry => { "partner_code" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mlog_entry" do
        mlog_entry = MlogEntry.create! valid_attributes
        # Assuming there are no other mlog_entries in the database, this
        # specifies that the MlogEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MlogEntry.any_instance.should_receive(:update).with({ "partner_code" => "" })
        put :update, {:id => mlog_entry.to_param, :mlog_entry => { "partner_code" => "" }}, valid_session
      end

      it "assigns the requested mlog_entry as @mlog_entry" do
        mlog_entry = MlogEntry.create! valid_attributes
        put :update, {:id => mlog_entry.to_param, :mlog_entry => valid_attributes}, valid_session
        assigns(:mlog_entry).should eq(mlog_entry)
      end

      it "redirects to the mlog_entry" do
        mlog_entry = MlogEntry.create! valid_attributes
        put :update, {:id => mlog_entry.to_param, :mlog_entry => valid_attributes}, valid_session
        response.should redirect_to(mlog_entry)
      end
    end

    describe "with invalid params" do
      it "assigns the mlog_entry as @mlog_entry" do
        mlog_entry = MlogEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MlogEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => mlog_entry.to_param, :mlog_entry => { "partner_code" => "invalid value" }}, valid_session
        assigns(:mlog_entry).should eq(mlog_entry)
      end

      it "re-renders the 'edit' template" do
        mlog_entry = MlogEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MlogEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => mlog_entry.to_param, :mlog_entry => { "partner_code" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mlog_entry" do
      mlog_entry = MlogEntry.create! valid_attributes
      expect {
        delete :destroy, {:id => mlog_entry.to_param}, valid_session
      }.to change(MlogEntry, :count).by(-1)
    end

    it "redirects to the mlog_entries list" do
      mlog_entry = MlogEntry.create! valid_attributes
      delete :destroy, {:id => mlog_entry.to_param}, valid_session
      response.should redirect_to(mlog_entries_url)
    end
  end

end