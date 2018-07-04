require 'rails_helper'

RSpec.describe "calendars/new", type: :view do
  before(:each) do
    assign(:calendar, Calendar.new(
      :fase => "MyText",
      :stadium => nil
    ))
  end

  it "renders new calendar form" do
    render

    assert_select "form[action=?][method=?]", calendars_path, "post" do

      assert_select "textarea#calendar_fase[name=?]", "calendar[fase]"

      assert_select "input#calendar_stadium_id[name=?]", "calendar[stadium_id]"
    end
  end
end
