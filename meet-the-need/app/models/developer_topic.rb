class DeveloperTopic < ActiveRecord::Base
  include Finder
  belongs_to :developer
  belongs_to :topic
end
