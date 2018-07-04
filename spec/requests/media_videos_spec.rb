require 'rails_helper'

RSpec.describe "MediaVideos", type: :request do
  describe "GET /media_videos" do
    it "works! (now write some real specs)" do
      get media_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
