class ReviewRequest < ActiveRecord::Base
  belongs_to :project
  belongs_to :developer
  belongs_to :customer
end
