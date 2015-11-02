class Project < ActiveRecord::Base
  include Finder
  has_many   :project_topics
  has_many   :topics, through: :project_topics
  has_many   :project_technologies
  has_many   :technologies, through: :project_technologies
  has_many   :requests
  belongs_to :customer
  belongs_to :developer

  validates :title, :body, :customer_id, presence: true

  def self.search(search)
    result_by_title = where("lower(title) LIKE (?)", "%#{search.downcase}%")
    result_by_body = where("lower(body) LIKE (?)", "%#{search.downcase}%")
    results = []
    results << result_by_title << result_by_body
    internal_results = []
    results.each do |result|
      internal_results << result[0]
    end
    internal_results.uniq
  end
end
