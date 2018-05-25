require 'rails_helper'

RSpec.describe "Hyoshis", type: :request do
  describe "GET /hyoshis" do
    it "works! (now write some real specs)" do
      get hyoshis_path
      expect(response).to have_http_status(200)
    end
  end
end
