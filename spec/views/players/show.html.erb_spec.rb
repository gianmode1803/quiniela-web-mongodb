require 'rails_helper'

RSpec.describe "players/show", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :nombre => "Nombre",
      :apellido => "Apellido",
      :ciudad_nacimiento => "Ciudad Nacimiento",
      :posicion => "Posicion",
      :dorsal => "",
      :apodo => "Apodo",
      :participaciones => "Participaciones",
      :foto => "Foto",
      :goles => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellido/)
    expect(rendered).to match(/Ciudad Nacimiento/)
    expect(rendered).to match(/Posicion/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Apodo/)
    expect(rendered).to match(/Participaciones/)
    expect(rendered).to match(/Foto/)
    expect(rendered).to match(//)
  end
end
