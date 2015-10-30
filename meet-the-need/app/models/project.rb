class Project < ActiveRecord::Base
  has_many   :technologies
  has_many   :topics
  belongs_to :customer
  belongs_to :developer

  validates :title, :body, presence: true
end