require 'rails_helper'

RSpec.describe "coach_teams/edit", type: :view do
  before(:each) do
    @coach_team = assign(:coach_team, CoachTeam.create!(
      :country => nil,
      :coach => nil
    ))
  end

  it "renders the edit coach_team form" do
    render

    assert_select "form[action=?][method=?]", coach_team_path(@coach_team), "post" do

      assert_select "input#coach_team_country_id[name=?]", "coach_team[country_id]"

      assert_select "input#coach_team_coach_id[name=?]", "coach_team[coach_id]"
    end
  end
end
