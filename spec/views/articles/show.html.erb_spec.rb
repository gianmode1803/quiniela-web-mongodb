require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :titulo => "Titulo",
      :cuerpo => "Cuerpo",
      :autor => "Autor",
      :destacado => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Cuerpo/)
    expect(rendered).to match(/Autor/)
    expect(rendered).to match(/false/)
  end
end
