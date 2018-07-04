require 'rails_helper'

RSpec.describe "stadia/edit", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!(
      :ciudad => "MyText",
      :capacidad => 1,
      :nombre => "MyString"
    ))
  end

  it "renders the edit stadium form" do
    render

    assert_select "form[action=?][method=?]", stadium_path(@stadium), "post" do

      assert_select "textarea#stadium_ciudad[name=?]", "stadium[ciudad]"

      assert_select "input#stadium_capacidad[name=?]", "stadium[capacidad]"

      assert_select "input#stadium_nombre[name=?]", "stadium[nombre]"
    end
  end
end
