class SectionController < ApplicationController

  def show
    @articles = Article.find_all_by_section_id(params[:id].to_i)
  end

end
