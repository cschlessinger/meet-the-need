class Customer < ActiveRecord::Base

  include Finder

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :conversations
  has_many :developers, through: :conversations

  # validates :email, uniqueness: true
  # validates :first_name, :last_name, presence: true
end
