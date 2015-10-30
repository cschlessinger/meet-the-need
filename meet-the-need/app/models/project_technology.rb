class ProjectTechnology < ActiveRecord::Base
  belongs_to :project
  belongs_to :technology
end
