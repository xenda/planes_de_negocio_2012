class HomeController < ApplicationController

  def index
    
  end

  def search
    
  end

  def find_results
    @search = params[:title]
    @results = BusinessPlane.search(@search)
    render :search
  end

end