class DeveloperTopic < ActiveRecord::Base
  belongs_to :developer
  belongs_to :topic
end
