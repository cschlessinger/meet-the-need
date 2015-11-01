class ProjectTechnology < ActiveRecord::Base
  include Finder
  belongs_to :project
  belongs_to :technology
end
