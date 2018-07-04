require 'rails_helper'

RSpec.describe "coach_teams/show", type: :view do
  before(:each) do
    @coach_team = assign(:coach_team, CoachTeam.create!(
      :country => nil,
      :coach => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
