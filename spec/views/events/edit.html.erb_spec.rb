require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :minuto => 1,
      :tipo => "MyString",
      :gol => false,
      :player => nil,
      :match => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_minuto[name=?]", "event[minuto]"

      assert_select "input#event_tipo[name=?]", "event[tipo]"

      assert_select "input#event_gol[name=?]", "event[gol]"

      assert_select "input#event_player_id[name=?]", "event[player_id]"

      assert_select "input#event_match_id[name=?]", "event[match_id]"
    end
  end
end
