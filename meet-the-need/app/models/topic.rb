class Topic < ActiveRecord::Base
  include Finder
  has_many :developers
  has_many :developer_technologies, through: :developers
  has_many :projects
  has_many :project_technologies, through: :project

  validates :name, presence: true
end