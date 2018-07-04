require 'rails_helper'

RSpec.describe "stadia/index", type: :view do
  before(:each) do
    assign(:stadia, [
      Stadium.create!(
        :ciudad => "MyText",
        :capacidad => 2,
        :nombre => "Nombre"
      ),
      Stadium.create!(
        :ciudad => "MyText",
        :capacidad => 2,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of stadia" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
