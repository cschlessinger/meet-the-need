class HomepageController < ApplicationController
  def index
    @projects = Project.all
  end
end
