class Developer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_many :developer_technologies
  has_many :topics, through: :developer_topics
  has_many :developer_topics
  has_many :technologies, through: :developer_technologies

  # validates :email, uniqueness: true
  # validates :first_name, :last_name, :zipcode, presence: true
end
