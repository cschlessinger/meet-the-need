class ProjectTopic < ActiveRecord::Base
  belongs_to :project
  belongs_to :topic
end
