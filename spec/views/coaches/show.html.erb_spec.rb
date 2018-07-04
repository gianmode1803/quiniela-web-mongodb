require 'rails_helper'

RSpec.describe "coaches/show", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :nombre => "Nombre",
      :apellido => "Apellido",
      :apodo => "Apodo",
      :ciudad_nacimiento => "Ciudad Nacimiento"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellido/)
    expect(rendered).to match(/Apodo/)
    expect(rendered).to match(/Ciudad Nacimiento/)
  end
end
