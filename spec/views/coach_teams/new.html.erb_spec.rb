require 'rails_helper'

RSpec.describe "coach_teams/new", type: :view do
  before(:each) do
    assign(:coach_team, CoachTeam.new(
      :country => nil,
      :coach => nil
    ))
  end

  it "renders new coach_team form" do
    render

    assert_select "form[action=?][method=?]", coach_teams_path, "post" do

      assert_select "input#coach_team_country_id[name=?]", "coach_team[country_id]"

      assert_select "input#coach_team_coach_id[name=?]", "coach_team[coach_id]"
    end
  end
end
