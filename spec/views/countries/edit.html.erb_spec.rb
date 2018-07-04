require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      :nombre => "MyString",
      :apodo => "MyString",
      :escudo => "MyString",
      :bandera => "MyString",
      :grupo => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input#country_nombre[name=?]", "country[nombre]"

      assert_select "input#country_apodo[name=?]", "country[apodo]"

      assert_select "input#country_escudo[name=?]", "country[escudo]"

      assert_select "input#country_bandera[name=?]", "country[bandera]"

      assert_select "input#country_grupo[name=?]", "country[grupo]"
    end
  end
end
