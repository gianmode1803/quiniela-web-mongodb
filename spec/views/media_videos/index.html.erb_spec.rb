require 'rails_helper'

RSpec.describe "media_videos/index", type: :view do
  before(:each) do
    assign(:media_videos, [
      MediaVideo.create!(
        :url => "",
        :titulo => "",
        :descripcion => ""
      ),
      MediaVideo.create!(
        :url => "",
        :titulo => "",
        :descripcion => ""
      )
    ])
  end

  it "renders a list of media_videos" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
