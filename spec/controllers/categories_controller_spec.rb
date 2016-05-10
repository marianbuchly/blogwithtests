require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "GET #index" do
    let(:categories) { create_list(:category, 3) }
    
    it "returns http success" do
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
