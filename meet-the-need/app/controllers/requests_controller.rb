class RequestsController < ApplicationController

	def new
		@request = Request.new

	end

	def create
		p params
		@request = Request.new(developer_id: current_developer.id)
	end

	def destroy
		Request.find(params[:id]).destroy
	end

	def 

end
