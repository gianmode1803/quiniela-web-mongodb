require 'rails_helper'

RSpec.describe "media_carrusels/edit", type: :view do
  before(:each) do
    @media_carrusel = assign(:media_carrusel, MediaCarrusel.create!())
  end

  it "renders the edit media_carrusel form" do
    render

    assert_select "form[action=?][method=?]", media_carrusel_path(@media_carrusel), "post" do
    end
  end
end
