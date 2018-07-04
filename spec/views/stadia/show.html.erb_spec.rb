require 'rails_helper'

RSpec.describe "stadia/show", type: :view do
  before(:each) do
    @stadium = assign(:stadium, Stadium.create!(
      :ciudad => "MyText",
      :capacidad => 2,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nombre/)
  end
end
