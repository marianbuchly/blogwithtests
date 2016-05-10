require 'rails_helper'

 RSpec.describe CategoriesController, type: :routing do
   describe "Get /posts/:post_id/categories" do
     let(:post) { create(:post) }

     it "should route to categories#index" do
       route = "/posts/#{post.to_param}/categories"
       expect(get route).to route_to "categories#index", post_id: post.to_param
     end
   end
 end
