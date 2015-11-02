class Request < ActiveRecord::Base
	belongs_to :developer
	belongs_to :customer
	belongs_to :project
end
