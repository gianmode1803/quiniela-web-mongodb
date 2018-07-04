require 'rails_helper'

RSpec.describe "countries/show", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      :nombre => "Nombre",
      :apodo => "Apodo",
      :escudo => "Escudo",
      :bandera => "Bandera",
      :grupo => "Grupo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apodo/)
    expect(rendered).to match(/Escudo/)
    expect(rendered).to match(/Bandera/)
    expect(rendered).to match(/Grupo/)
  end
end
