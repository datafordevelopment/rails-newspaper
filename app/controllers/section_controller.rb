class SectionController < ApplicationController

  def show
    @section = Section.find_by_name(params[:name])
    @articles = Article.find_all_by_section_id(@section.id)
  end

end
