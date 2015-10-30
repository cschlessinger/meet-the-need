class Developer < ActiveRecord::Base
  has_many :projects
  has_many :developer_technologies
  has_many :topics, through: :developer_topics
  has_many :developer_topics
  has_many :technologies, through: :developer_technologies

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :zipcode, presence: true
end
