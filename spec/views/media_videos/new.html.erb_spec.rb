require 'rails_helper'

RSpec.describe "media_videos/new", type: :view do
  before(:each) do
    assign(:media_video, MediaVideo.new(
      :url => "",
      :titulo => "",
      :descripcion => ""
    ))
  end

  it "renders new media_video form" do
    render

    assert_select "form[action=?][method=?]", media_videos_path, "post" do

      assert_select "input#media_video_url[name=?]", "media_video[url]"

      assert_select "input#media_video_titulo[name=?]", "media_video[titulo]"

      assert_select "input#media_video_descripcion[name=?]", "media_video[descripcion]"
    end
  end
end
