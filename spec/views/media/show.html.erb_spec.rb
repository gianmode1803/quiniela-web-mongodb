require 'rails_helper'

RSpec.describe "media/show", type: :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :url => "Url",
      :nombre => "Nombre",
      :tipo => "Tipo",
      :ancho => 2,
      :alto => 3,
      :size => 4,
      :descripcion => "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Descripcion/)
  end
end
