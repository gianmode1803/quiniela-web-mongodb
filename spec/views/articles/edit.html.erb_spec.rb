require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :titulo => "MyString",
      :cuerpo => "MyString",
      :autor => "MyString",
      :destacado => false
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_titulo[name=?]", "article[titulo]"

      assert_select "input#article_cuerpo[name=?]", "article[cuerpo]"

      assert_select "input#article_autor[name=?]", "article[autor]"

      assert_select "input#article_destacado[name=?]", "article[destacado]"
    end
  end
end
