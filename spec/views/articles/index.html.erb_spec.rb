require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :titulo => "Titulo",
        :cuerpo => "Cuerpo",
        :autor => "Autor",
        :destacado => false
      ),
      Article.create!(
        :titulo => "Titulo",
        :cuerpo => "Cuerpo",
        :autor => "Autor",
        :destacado => false
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Cuerpo".to_s, :count => 2
    assert_select "tr>td", :text => "Autor".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
