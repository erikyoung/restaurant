class HomeController < ApplicationController
  def index
  end

  def menu
  	@sections = Section.all
  	if params[:section_id].present?
  		@current_section = Section.find(params[:section_id])
  	end

    if params[:sort_color]
      @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
  end
end


  def contact_us
  end


end
