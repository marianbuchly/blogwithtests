require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "GET #index" do
    let(:categories) { create_list(:category, 3) }

    it "assigns all posts to @categories" do
      get :index
      expect(assigns(:categories)).to eq categories
    end
  end

  describe "GET #show" do
    let(:category) { FactoryGirl.create(:category) }

    it "assigns the requested category as @category" do
      get :show, {:id => category.to_param}
        expect(assigns(:category)).to eq category
    end
  end



  describe "Get #destroy" do
    let(:category) { FactoryGirl.create(:category) }

    it "destroys @category" do
      get :destroy, { id: category.to_param }
      expect(assigns(:title)).to eq(@category)
    end
  end


end
