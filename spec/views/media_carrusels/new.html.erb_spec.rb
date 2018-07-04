require 'rails_helper'

RSpec.describe "media_carrusels/new", type: :view do
  before(:each) do
    assign(:media_carrusel, MediaCarrusel.new())
  end

  it "renders new media_carrusel form" do
    render

    assert_select "form[action=?][method=?]", media_carrusels_path, "post" do
    end
  end
end
