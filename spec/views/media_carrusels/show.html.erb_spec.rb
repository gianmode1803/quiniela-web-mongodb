require 'rails_helper'

RSpec.describe "media_carrusels/show", type: :view do
  before(:each) do
    @media_carrusel = assign(:media_carrusel, MediaCarrusel.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
