class SectionController < ApplicationController

  def show
    @articles = Article.find_all_by_category(params[:name])
  end

end
