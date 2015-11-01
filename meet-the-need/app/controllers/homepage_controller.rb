class HomepageController < ApplicationController
  def index
    @projects = Project.all
  end

  def search
    p '*' * 40
    p params
  end
end
