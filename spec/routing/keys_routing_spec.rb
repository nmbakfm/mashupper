require "rails_helper"

RSpec.describe KeysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/keys").to route_to("keys#index")
    end


    it "routes to #show" do
      expect(:get => "/keys/1").to route_to("keys#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/keys").to route_to("keys#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/keys/1").to route_to("keys#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/keys/1").to route_to("keys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/keys/1").to route_to("keys#destroy", :id => "1")
    end

  end
end
