class SearchResultController < ApplicationController

  def search
    #puts "entra aquiiii"
    if params[:search]
      @articles = Article.search(params[:search]).order("created_at DESC")
      @medias = Medium.search(params[:search]).order("created_at DESC")
    #  puts @medias
      render "/search_result/result"
      #puts @articles
    else
      @articles = Article.all.order("created_at DESC")
      @medias = Medium.all.order("created_at DESC")
      render "/search_result/result"
    end
  end
end
