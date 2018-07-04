require 'rails_helper'

RSpec.describe "CoachTeams", type: :request do
  describe "GET /coach_teams" do
    it "works! (now write some real specs)" do
      get coach_teams_path
      expect(response).to have_http_status(200)
    end
  end
end
