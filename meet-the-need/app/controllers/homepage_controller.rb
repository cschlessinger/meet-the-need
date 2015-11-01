class HomepageController < ApplicationController
  def index
    projects = Project.all
    reversed_projects = projects.reverse
    @latest_three_projects = reversed_projects.slice!(0..2)

    developers = Developer.all
    reversed_developers = developers.reverse
    @latest_three_developers = reversed_developers.slice!(0..2)

  end

  def search
    p '*' * 40
    p params
  end
end
