class ProjectTopic < ActiveRecord::Base
  include Finder
  belongs_to :project
  belongs_to :topic
end
