class Project < ActiveRecord::Base
  include Finder
  has_many   :project_topics
  has_many   :topics, through: :project_topics
  has_many   :project_technologies
  has_many   :technologies, through: :project_technologies
  has_many   :requests
  belongs_to :customer
  belongs_to :developer

  validates :title, :body, presence: true

  def self.search(search)
    result_by_title = []
    result_by_body = []
    result_by_title << self.where("lower(title) LIKE (?)", "%#{search.downcase}%")
    result_by_body << self.where("lower(body) LIKE (?)", "%#{search.downcase}%")
    project_results = []
    project_results << result_by_title << result_by_body
    project_internal_results = []
    project_results.each do |result|
      project_internal_results << result[0]
    end
    project_internal_results.flatten.uniq.compact
  end
end
