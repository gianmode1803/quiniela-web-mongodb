require 'rails_helper'

RSpec.describe "media_videos/edit", type: :view do
  before(:each) do
    @media_video = assign(:media_video, MediaVideo.create!(
      :url => "",
      :titulo => "",
      :descripcion => ""
    ))
  end

  it "renders the edit media_video form" do
    render

    assert_select "form[action=?][method=?]", media_video_path(@media_video), "post" do

      assert_select "input#media_video_url[name=?]", "media_video[url]"

      assert_select "input#media_video_titulo[name=?]", "media_video[titulo]"

      assert_select "input#media_video_descripcion[name=?]", "media_video[descripcion]"
    end
  end
end
