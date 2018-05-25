require "rails_helper"

RSpec.describe TensionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tensions").to route_to("tensions#index")
    end


    it "routes to #show" do
      expect(:get => "/tensions/1").to route_to("tensions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tensions").to route_to("tensions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tensions/1").to route_to("tensions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tensions/1").to route_to("tensions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tensions/1").to route_to("tensions#destroy", :id => "1")
    end

  end
end
