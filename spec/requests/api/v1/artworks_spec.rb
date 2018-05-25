require 'rails_helper'

RSpec.describe "Api::V1::Artworks", type: :request do
  describe "POST /api/v1/artworks" do
    before do
      json = <<-JSON
        {
          "title": "title"
        }
      JSON
      @params = JSON.parse(json, symbolize_names: true)
    end
    it "ステータスコードが201であること" do
      post api_v1_artworks_path(format: :json), params: @params
      expect(response).to have_http_status(201)
    end
    it "Artworkのデータが1つ追加されていること" do
      post api_v1_artworks_path(format: :json), params: @params
      expect(Artwork.count).to eq(1)
    end
  end
end
