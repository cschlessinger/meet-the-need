class DeveloperTechnology < ActiveRecord::Base
  include Finder
  belongs_to :developer
  belongs_to :technology
end
