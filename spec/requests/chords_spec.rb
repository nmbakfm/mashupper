require 'rails_helper'

RSpec.describe "Chords", type: :request do
  describe "GET /chords" do
    it "works! (now write some real specs)" do
      get chords_path
      expect(response).to have_http_status(200)
    end
  end
end
