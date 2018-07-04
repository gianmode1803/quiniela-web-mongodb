require 'rails_helper'

RSpec.describe "media/index", type: :view do
  before(:each) do
    assign(:media, [
      Medium.create!(
        :url => "Url",
        :nombre => "Nombre",
        :tipo => "Tipo",
        :ancho => 2,
        :alto => 3,
        :size => 4,
        :descripcion => "Descripcion"
      ),
      Medium.create!(
        :url => "Url",
        :nombre => "Nombre",
        :tipo => "Tipo",
        :ancho => 2,
        :alto => 3,
        :size => 4,
        :descripcion => "Descripcion"
      )
    ])
  end

  it "renders a list of media" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
  end
end
