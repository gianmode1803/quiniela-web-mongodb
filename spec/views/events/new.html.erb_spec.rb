require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :minuto => 1,
      :tipo => "MyString",
      :gol => false,
      :player => nil,
      :match => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_minuto[name=?]", "event[minuto]"

      assert_select "input#event_tipo[name=?]", "event[tipo]"

      assert_select "input#event_gol[name=?]", "event[gol]"

      assert_select "input#event_player_id[name=?]", "event[player_id]"

      assert_select "input#event_match_id[name=?]", "event[match_id]"
    end
  end
end
