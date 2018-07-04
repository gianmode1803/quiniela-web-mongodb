require 'rails_helper'

RSpec.describe "media/new", type: :view do
  before(:each) do
    assign(:medium, Medium.new(
      :url => "MyString",
      :nombre => "MyString",
      :tipo => "MyString",
      :ancho => 1,
      :alto => 1,
      :size => 1,
      :descripcion => "MyString"
    ))
  end

  it "renders new medium form" do
    render

    assert_select "form[action=?][method=?]", media_path, "post" do

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
