class Technology < ActiveRecord::Base
  has_many :developer_technologies
  has_many :developers, through: :developer_technologies
  has_many :project_technologies
  has_many :projects, through: :project_technologies

  validates :name, presence: true
end
