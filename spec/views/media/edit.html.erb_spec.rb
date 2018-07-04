require 'rails_helper'

RSpec.describe "media/edit", type: :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :url => "MyString",
      :nombre => "MyString",
      :tipo => "MyString",
      :ancho => 1,
      :alto => 1,
      :size => 1,
      :descripcion => "MyString"
    ))
  end

  it "renders the edit medium form" do
    render

    assert_select "form[action=?][method=?]", medium_path(@medium), "post" do

      assert_select "input#medium_url[name=?]", "medium[url]"

      assert_select "input#medium_nombre[name=?]", "medium[nombre]"

      assert_select "input#medium_tipo[name=?]", "medium[tipo]"

      assert_select "input#medium_ancho[name=?]", "medium[ancho]"

      assert_select "input#medium_alto[name=?]", "medium[alto]"

      assert_select "input#medium_size[name=?]", "medium[size]"

      assert_select "input#medium_descripcion[name=?]", "medium[descripcion]"
    end
  end
end
