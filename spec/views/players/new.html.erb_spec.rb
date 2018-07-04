require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    assign(:player, Player.new(
      :nombre => "MyString",
      :apellido => "MyString",
      :ciudad_nacimiento => "MyString",
      :posicion => "MyString",
      :dorsal => "",
      :apodo => "MyString",
      :participaciones => "MyString",
      :foto => "MyString",
      :goles => ""
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input#player_nombre[name=?]", "player[nombre]"

      assert_select "input#player_apellido[name=?]", "player[apellido]"

      assert_select "input#player_ciudad_nacimiento[name=?]", "player[ciudad_nacimiento]"

      assert_select "input#player_posicion[name=?]", "player[posicion]"

      assert_select "input#player_dorsal[name=?]", "player[dorsal]"

      assert_select "input#player_apodo[name=?]", "player[apodo]"

      assert_select "input#player_participaciones[name=?]", "player[participaciones]"

      assert_select "input#player_foto[name=?]", "player[foto]"

      assert_select "input#player_goles[name=?]", "player[goles]"
    end
  end
end
