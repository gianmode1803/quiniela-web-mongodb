require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :titulo => "MyString",
      :cuerpo => "MyString",
      :autor => "MyString",
      :destacado => false
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_titulo[name=?]", "article[titulo]"

      assert_select "input#article_cuerpo[name=?]", "article[cuerpo]"

      assert_select "input#article_autor[name=?]", "article[autor]"

      assert_select "input#article_destacado[name=?]", "article[destacado]"
    end
  end
end
