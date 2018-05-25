require "rails_helper"

RSpec.describe ChordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chords").to route_to("chords#index")
    end


    it "routes to #show" do
      expect(:get => "/chords/1").to route_to("chords#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chords").to route_to("chords#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chords/1").to route_to("chords#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chords/1").to route_to("chords#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chords/1").to route_to("chords#destroy", :id => "1")
    end

  end
end
