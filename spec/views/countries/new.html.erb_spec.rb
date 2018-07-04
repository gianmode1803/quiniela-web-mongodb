require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:country, Country.new(
      :nombre => "MyString",
      :apodo => "MyString",
      :escudo => "MyString",
      :bandera => "MyString",
      :grupo => "MyString"
    ))
  end

  it "renders new country form" do
    render

    assert_select "form[action=?][method=?]", countries_path, "post" do

      assert_select "input#country_nombre[name=?]", "country[nombre]"

      assert_select "input#country_apodo[name=?]", "country[apodo]"

      assert_select "input#country_escudo[name=?]", "country[escudo]"

      assert_select "input#country_bandera[name=?]", "country[bandera]"

      assert_select "input#country_grupo[name=?]", "country[grupo]"
    end
  end
end
