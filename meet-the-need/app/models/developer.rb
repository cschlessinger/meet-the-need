class Developer < ActiveRecord::Base
  has_many :projects
  has_many :technologies
  has_many :topics

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :zipcode, presence: true
end
