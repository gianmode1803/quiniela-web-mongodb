require 'rails_helper'

RSpec.describe "countries/index", type: :view do
  before(:each) do
    assign(:countries, [
      Country.create!(
        :nombre => "Nombre",
        :apodo => "Apodo",
        :escudo => "Escudo",
        :bandera => "Bandera",
        :grupo => "Grupo"
      ),
      Country.create!(
        :nombre => "Nombre",
        :apodo => "Apodo",
        :escudo => "Escudo",
        :bandera => "Bandera",
        :grupo => "Grupo"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apodo".to_s, :count => 2
    assert_select "tr>td", :text => "Escudo".to_s, :count => 2
    assert_select "tr>td", :text => "Bandera".to_s, :count => 2
    assert_select "tr>td", :text => "Grupo".to_s, :count => 2
  end
end
