class HomepageController < ApplicationController
  include LatestList
  def index
    projects = Project.all
    developers = Developer.all
    @latest_three_projects = list_latest(projects, 4)
    @latest_three_developers = list_latest(developers, 4)
  end

  def search
    @project_search_results = Project.search(params[:search])
    @developer_search_results = Developer.search(params[:search])
    render "search_results/search_results"
  end
end
