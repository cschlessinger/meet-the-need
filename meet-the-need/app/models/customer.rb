class Customer < ActiveRecord::Base
  include Finder
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects

  # validates :email, uniqueness: true
  # validates :first_name, :last_name, :zipcode, presence: true
end
