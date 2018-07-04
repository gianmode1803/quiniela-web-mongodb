require 'rails_helper'

RSpec.describe "matches/index", type: :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :posesion => 2,
        :calendar => nil,
        :country => nil
      ),
      Match.create!(
        :posesion => 2,
        :calendar => nil,
        :country => nil
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
