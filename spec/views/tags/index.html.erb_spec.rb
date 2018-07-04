require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        :nombre => "Nombre"
      ),
      Tag.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
