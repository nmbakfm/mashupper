require 'rails_helper'

RSpec.describe "Api::V1::Artworks", type: :request do
  describe 'GET /api/v1/artworks' do
    it "ステータスコードが200であること", autodoc: true do
      Artwork.create!(id: 1, title: 'thisistitle') unless Artwork.exists?(id: 1)
      get api_v1_artworks_path(format: :json)
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /api/v1/artworks" do
    before do
      json = <<-JSON
        {
          "title": "title"
        }
      JSON
      @params = JSON.parse(json, symbolize_names: true)
    end
    it "ステータスコードが201であること", autodoc: true do
      post api_v1_artworks_path(format: :json), params: @params
      expect(response).to have_http_status(201)
    end
    it "Artworkのデータが1つ追加されていること" do
      post api_v1_artworks_path(format: :json), params: @params
      expect(Artwork.count).to eq(1)
    end
  end
end
