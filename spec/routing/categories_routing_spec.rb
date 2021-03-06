require 'rails_helper'

 RSpec.describe CategoriesController, type: :routing do
   describe "routing" do

       it "routes to categories#index" do
         expect(:get => "/categories").to route_to("categories#index")
     end
   end

   it "routes to #show" do
      expect(:get => "/categories/1").to route_to(
         :controller => "categories",
         :action => "show",
         :id => "1"
         )
    end

    it "routes to #create" do
      expect(:post => "/categories").to route_to("categories#create")
    end

    it "routes to #edit" do
      expect(:get => "/categories/1/edit").to route_to(
        :controller => "categories",
        :action => "edit",
        :id => "1"
        )
    end

    it "delete destroy" do
       expect(:delete => "categories/1").to route_to(
       :controller => "categories",
       :action => "destroy",
       :id => "1"
     )
     end
 end
