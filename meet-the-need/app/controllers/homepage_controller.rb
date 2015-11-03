class HomepageController < ApplicationController
  include LatestList
  def index
    projects = Project.all
    developers = Developer.all
    @latest_three_projects = list_latest(projects, 3)
    @latest_three_developers = list_latest(developers, 3)
  end

  def search
    @search_results = Project.search(params[:search])
    render "search_results/search_results"
  end
end
