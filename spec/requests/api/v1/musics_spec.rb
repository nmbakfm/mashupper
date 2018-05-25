require 'rails_helper'

RSpec.describe "Api::V1::Musics", type: :request do
  let(:json) do
    <<-JSON
      {
        "title": "thisistitle",
        "beginning_margin_sec": 1,
        "chords": [
          {"chord_name": "Cm7", "bar": 0, "beat": 0},
          {"chord_name": "D/A", "bar": 0, "beat": 1.5},
          {"chord_name": "Baug", "bar": 1, "beat": 0},
          {"chord_name": "Edim", "bar": 1, "beat": 1.5}
        ],
        "bpms": [
          {"bpm": 120, "bar": 0, "beat": 0}
        ],
        "hyoshis": [
          {"denominator": 4, "numerator": 4, "bar": 0, "beat": 0}
        ],
        "phrases": [
          {"bar": 0, "beat": 0},
          {"bar": 4, "beat": 0}
        ],
        "keys": [
          {"key": "G major", "bar": 0, "beat": 0}
        ]
      }
    JSON
  end
  describe "POST /api/v1/musics" do
    before do
      @params = JSON.parse(json, symbolize_names: true)
    end
    it "ステータスコードが201であること", autodoc: true do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(response).to have_http_status(201)
    end
    it "Musicのデータが1つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Music.count).to eq(1)
    end
    it "Chordのデータが4つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Chord.count).to eq(4)
    end
    it "Bpmのデータが1つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Bpm.count).to eq(1)
    end
    it "Hyoshiのデータが1つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Hyoshi.count).to eq(1)
    end
    it "Phraseのデータが2つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Phrase.count).to eq(2)
    end
    it "Keyのデータが1つ追加されていること" do
      post api_v1_musics_path(1, format: :json), params: @params
      expect(Key.count).to eq(1)
    end
  end
  describe "GET /api/v1/musics", autodoc: true do
    it "ステータスコードが200であること", autodoc: true do
      @params = JSON.parse(json)
      music = Music.build_by_hash(@params)
      music.id = 1
      music.save!
      get api_v1_musics_path(1, format: :json)
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /api/v1/musics", autodoc: true do
    it "ステータスコードが200であること", autodoc: true do
      @params = JSON.parse(json)
      music = Music.build_by_hash(@params)
      music.id = 1
      music.save!
      get api_v1_musics_path(1, format: :json)
      expect(response).to have_http_status(200)
    end
  end
end
