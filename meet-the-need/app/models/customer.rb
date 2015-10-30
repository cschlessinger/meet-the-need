class Customer < ActiveRecord::Base
  has_many :projects

  validates :email, uniqueness: true
  validates :first_name, :last_name, :email, :zipcode, presence: true
end
