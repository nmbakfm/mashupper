require 'rails_helper'

RSpec.describe "ArtworkMusics", type: :request do
  let(:json) do
    <<-JSON
      {
        "artwork_id": 1,
        "music_id": 1
      }
    JSON
  end
  describe "GET /artwork_musics" do
    before do
      Music.create!(id: 1) unless Music.exists?(id: 1)
      Artwork.create!(id: 1) unless Artwork.exists?(id: 1)
    end
    it "ステータスコードが200であること" do
      get api_v1_artwork_musics_path(format: :json)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /artwork_musics" do
    before do
      Music.create!(id: 1) unless Music.exists?(id: 1)
      Artwork.create!(id: 1) unless Artwork.exists?(id: 1)
      @params = {
        artwork_id: 1,
        music_id: 1
      }
    end
    it "ステータスコードが201であること(メロディー保存)", autodoc: true do
      @params[:usage] = "melody"
      post api_v1_artwork_musics_path(format: :json), params: @params
      expect(response).to have_http_status(201)
    end
    it "ステータスコードが201であること(伴奏保存)", autodoc: true do
      @params[:usage] = "accompaniment"
      post api_v1_artwork_musics_path(format: :json), params: @params
      expect(response).to have_http_status(201)
    end
  end
end
