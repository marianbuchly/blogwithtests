require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #index" do
    let(:posts) { create_list(:post, 3) }
    let(:category) { create(:category) }


    it "assigns all posts to @posts" do
      get :index
      expect(assigns(:posts)).to eq posts
    end
  end

  let(:admin) { FactoryGirl.create(:admin) }

  let(:valid_attributes) do
   { title: "Title", body: "So many tests!!", admin: admin }
  end

 let(:invalid_attributes) do
   { title: "" }
 end

  describe "GET #show" do
    let(:post) { FactoryGirl.create(:post) }

    it "assigns the requested post as @post" do
      get :show, {:id => post.to_param}
      expect(assigns(:post)).to eq(post)
    end
  end

  # describe "POST #create" do
  #   let(:post) { FactoryGirl.create(:post) }
  #
  #   it "create @post" do
  #     expect {
  #       post :create, { post: valid_attributes}
  #        }.to change(Post, :count).by(1)
  #   end
  # end

  # it "creates a new Post" do
  #         expect {
  #           post :create, {post: valid_attributes}
  #         }.to change(Post, :count).by(1)
  #       end

  describe "Get #edit" do
    let(:post) { FactoryGirl.create(:post) }

    it "assigns to edit from @post" do
      get :edit, { id: post.to_param }
      expect(assigns(:title)).to eq(@post)
    end
  end

  describe "Get #destroy" do
    let(:post) { FactoryGirl.create(:post) }

    it "destroys @post" do
      get :destroy, { id: post.to_param }
      expect(assigns(:title)).to eq(@post)
    end
  end
end
