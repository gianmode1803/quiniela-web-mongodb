require 'rails_helper'

RSpec.describe "stadia/new", type: :view do
  before(:each) do
    assign(:stadium, Stadium.new(
      :ciudad => "MyText",
      :capacidad => 1,
      :nombre => "MyString"
    ))
  end

  it "renders new stadium form" do
    render

    assert_select "form[action=?][method=?]", stadia_path, "post" do

      assert_select "textarea#stadium_ciudad[name=?]", "stadium[ciudad]"

      assert_select "input#stadium_capacidad[name=?]", "stadium[capacidad]"

      assert_select "input#stadium_nombre[name=?]", "stadium[nombre]"
    end
  end
end
