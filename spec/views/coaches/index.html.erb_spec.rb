require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        :nombre => "Nombre",
        :apellido => "Apellido",
        :apodo => "Apodo",
        :ciudad_nacimiento => "Ciudad Nacimiento"
      ),
      Coach.create!(
        :nombre => "Nombre",
        :apellido => "Apellido",
        :apodo => "Apodo",
        :ciudad_nacimiento => "Ciudad Nacimiento"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido".to_s, :count => 2
    assert_select "tr>td", :text => "Apodo".to_s, :count => 2
    assert_select "tr>td", :text => "Ciudad Nacimiento".to_s, :count => 2
  end
end
