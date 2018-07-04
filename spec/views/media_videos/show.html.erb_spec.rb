require 'rails_helper'

RSpec.describe "media_videos/show", type: :view do
  before(:each) do
    @media_video = assign(:media_video, MediaVideo.create!(
      :url => "",
      :titulo => "",
      :descripcion => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
