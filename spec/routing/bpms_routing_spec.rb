require "rails_helper"

RSpec.describe BpmsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bpms").to route_to("bpms#index")
    end


    it "routes to #show" do
      expect(:get => "/bpms/1").to route_to("bpms#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bpms").to route_to("bpms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bpms/1").to route_to("bpms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bpms/1").to route_to("bpms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bpms/1").to route_to("bpms#destroy", :id => "1")
    end

  end
end
