require 'rails_helper'

RSpec.describe "Tensions", type: :request do
  describe "GET /tensions" do
    it "works! (now write some real specs)" do
      get tensions_path
      expect(response).to have_http_status(200)
    end
  end
end
