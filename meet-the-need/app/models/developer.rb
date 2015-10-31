class Developer < ActiveRecord::Base
  include Finder
  has_many :projects
  has_many :developer_technologies
  has_many :technologies, through: :developer_technologies
  has_many :developer_topics
  has_many :topics, through: :developer_topics

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :zipcode, presence: true
end
