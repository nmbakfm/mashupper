require 'rails_helper'

RSpec.describe "Api::V1::Artworks", type: :request do
  describe "POST /api/v1/artworks" do
    before do
      json = <<-JSON
        {
          "beginning_margin_sec": 1,
          "chords": [
            {"chord": "C", "type": "M", "tension": ["M7", "M9"], "root": "C", "bar": 0, "beat": 0},
            {"chord": "D", "type": "M", "tension": [], "root": "C", "bar": 0, "beat": 1.5},
            {"chord": "B", "type": "m", "tension": ["7"], "root": "B", "bar": 1, "beat": 0},
            {"chord": "E", "type": "m", "tension": ["7"], "root": "B", "bar": 1, "beat": 1.5}
          ],
          "bpms": [
            {"bpm": 120, "bar": 0, "beat": 0}
          ],
          "hyoshi": [
            {"denominator": 4, "numerator": 4, "bar": 0, "beat": 0}
          ],
          "phrases": [
            {"bar": 0, "beat": 0},
            {"bar": 4, "beat": 0}
          ],
          "key": [
            {"key": "G major", "bar": 0, "beat": 0}
          ]
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
