require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        :nombre => "Nombre",
        :apellido => "Apellido",
        :ciudad_nacimiento => "Ciudad Nacimiento",
        :posicion => "Posicion",
        :dorsal => "",
        :apodo => "Apodo",
        :participaciones => "Participaciones",
        :foto => "Foto",
        :goles => ""
      ),
      Player.create!(
        :nombre => "Nombre",
        :apellido => "Apellido",
        :ciudad_nacimiento => "Ciudad Nacimiento",
        :posicion => "Posicion",
        :dorsal => "",
        :apodo => "Apodo",
        :participaciones => "Participaciones",
        :foto => "Foto",
        :goles => ""
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido".to_s, :count => 2
    assert_select "tr>td", :text => "Ciudad Nacimiento".to_s, :count => 2
    assert_select "tr>td", :text => "Posicion".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Apodo".to_s, :count => 2
    assert_select "tr>td", :text => "Participaciones".to_s, :count => 2
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
