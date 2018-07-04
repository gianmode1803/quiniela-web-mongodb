require 'rails_helper'

RSpec.describe "matches/edit", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :posesion => 1,
      :calendar => nil,
      :country => nil
    ))
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(@match), "post" do

      assert_select "input#match_posesion[name=?]", "match[posesion]"

      assert_select "input#match_calendar_id[name=?]", "match[calendar_id]"

      assert_select "input#match_country_id[name=?]", "match[country_id]"
    end
  end
end
