class Developer < ActiveRecord::Base

  include Finder

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :projects
  has_many :developer_technologies
  has_many :technologies, through: :developer_technologies
  has_many :developer_topics
  has_many :topics, through: :developer_topics
  has_many :conversations
  has_many :customers, through: :conversations


  # validates :email, uniqueness: true
  # validates :first_name, :last_name, :zipcode, presence: true
  def self.search(search)
    developer_results = []
    all_developers = Developer.all
    all_developers.each do |developer|
      developer.topics.each do |topic|
        if topic.name.downcase.include?(search.downcase)
          developer_results << developer
        end
      end
      developer.technologies.each do |technology|
        if technology.name.downcase.include?(search.downcase)
          developer_results << developer
        end
      end
    end
    developer_results.flatten.uniq.compact
  end
end
