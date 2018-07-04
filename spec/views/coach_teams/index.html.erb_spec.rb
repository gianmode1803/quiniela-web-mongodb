require 'rails_helper'

RSpec.describe "coach_teams/index", type: :view do
  before(:each) do
    assign(:coach_teams, [
      CoachTeam.create!(
        :country => nil,
        :coach => nil
      ),
      CoachTeam.create!(
        :country => nil,
        :coach => nil
      )
    ])
  end

  it "renders a list of coach_teams" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
