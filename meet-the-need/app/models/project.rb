class Project < ActiveRecord::Base
  has_many   :technologies, through: :project_technologies
  has_many   :topics, through: :project_topics
  has_many   :project_technologies
  has_many   :project_topics
  belongs_to :customer
  belongs_to :developer

  validates :title, :body, :customer_id, presence: true

  # find associations between a project's topics and potential developers
  def dev_finder
    our_devs_ids = []
    our_devs = []

    # iterates through the ids of topics associated with the project the method is called on; returns an array of developer ids
    topic_ids.each do |t_id|
      our_devs_ids << ActiveRecord::Base::DeveloperTopic.where(topic_id: t_id)
    end

    # iterates through developer ids to return an array of developer objects
    our_devs_ids.each do |dev_id|
      our_devs << Developer.where(id: dev_id)
    end

    return our_devs
  end
end