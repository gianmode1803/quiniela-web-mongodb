require 'rails_helper'

RSpec.describe "matches/new", type: :view do
  before(:each) do
    assign(:match, Match.new(
      :posesion => 1,
      :calendar => nil,
      :country => nil
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_posesion[name=?]", "match[posesion]"

      assert_select "input#match_calendar_id[name=?]", "match[calendar_id]"

      assert_select "input#match_country_id[name=?]", "match[country_id]"
    end
  end
end
