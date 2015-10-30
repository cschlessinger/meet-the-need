class DeveloperTechnology < ActiveRecord::Base
  belongs_to :developer
  belongs_to :technology
end
