class Conversation < ActiveRecord::Base
  belongs_to :developer
  belongs_to :customer
  validates :initiated_by, presence: true
end
