require "rails_helper"

RSpec.describe HyoshisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hyoshis").to route_to("hyoshis#index")
    end


    it "routes to #show" do
      expect(:get => "/hyoshis/1").to route_to("hyoshis#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hyoshis").to route_to("hyoshis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hyoshis/1").to route_to("hyoshis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hyoshis/1").to route_to("hyoshis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hyoshis/1").to route_to("hyoshis#destroy", :id => "1")
    end

  end
end
