require 'rails_helper'

RSpec.describe "coaches/new", type: :view do
  before(:each) do
    assign(:coach, Coach.new(
      :nombre => "MyString",
      :apellido => "MyString",
      :apodo => "MyString",
      :ciudad_nacimiento => "MyString"
    ))
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do

      assert_select "input#coach_nombre[name=?]", "coach[nombre]"

      assert_select "input#coach_apellido[name=?]", "coach[apellido]"

      assert_select "input#coach_apodo[name=?]", "coach[apodo]"

      assert_select "input#coach_ciudad_nacimiento[name=?]", "coach[ciudad_nacimiento]"
    end
  end
end
