require 'rails_helper'

RSpec.describe "MediaCarrusels", type: :request do
  describe "GET /media_carrusels" do
    it "works! (now write some real specs)" do
      get media_carrusels_path
      expect(response).to have_http_status(200)
    end
  end
end
