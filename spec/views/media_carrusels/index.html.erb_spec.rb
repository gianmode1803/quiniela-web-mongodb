require 'rails_helper'

RSpec.describe "media_carrusels/index", type: :view do
  before(:each) do
    assign(:media_carrusels, [
      MediaCarrusel.create!(),
      MediaCarrusel.create!()
    ])
  end

  it "renders a list of media_carrusels" do
    render
  end
end
