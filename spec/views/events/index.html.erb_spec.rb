require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :minuto => 2,
        :tipo => "Tipo",
        :gol => false,
        :player => nil,
        :match => nil
      ),
      Event.create!(
        :minuto => 2,
        :tipo => "Tipo",
        :gol => false,
        :player => nil,
        :match => nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
