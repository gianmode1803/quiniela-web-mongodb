require 'rails_helper'

RSpec.describe "calendars/edit", type: :view do
  before(:each) do
    @calendar = assign(:calendar, Calendar.create!(
      :fase => "MyText",
      :stadium => nil
    ))
  end

  it "renders the edit calendar form" do
    render

    assert_select "form[action=?][method=?]", calendar_path(@calendar), "post" do

      assert_select "textarea#calendar_fase[name=?]", "calendar[fase]"

      assert_select "input#calendar_stadium_id[name=?]", "calendar[stadium_id]"
    end
  end
end
