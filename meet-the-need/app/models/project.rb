class Project < ActiveRecord::Base
  include Finder
  has_many   :technologies, through: :project_technologies
  has_many   :topics, through: :project_topics
  has_many   :project_technologies
  has_many   :project_topics
  belongs_to :customer
  belongs_to :developer

  validates :title, :body, :customer_id, presence: true
end
