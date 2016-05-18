require 'rails_helper'

 RSpec.describe PostsController, type: :routing do
   describe "GET /" do
     it "routes to posts#index" do
       expect(:get => "/").to route_to("posts#index")
     end
   end

   it "routes to #show" do
      expect(:get => "/posts/1").to route_to(
         :controller => "posts",
         :action => "show",
         :id => "1"
         )
    end

    it "routes to #create" do
      expect(:post => "/posts").to route_to("posts#create")
    end

    it "routes to #edit" do
      expect(:get => "/posts/1/edit").to route_to(
        :controller => "posts",
        :action => "edit",
        :id => "1"
        )
    end

    it "delete destroy" do
       expect(:delete => "posts/1").to route_to(
       :controller => "posts",
       :action => "destroy",
       :id => "1"
     )
     end
end
