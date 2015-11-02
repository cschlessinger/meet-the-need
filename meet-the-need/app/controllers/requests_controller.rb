class RequestsController < ApplicationController

	def new
		@request = Request.new

	end

	def create
		customer = Project.find(params[:project]).customer
		@request = Request.create(developer_id: current_developer.id, project_id: params[:project], customer_id: customer.id)
		p "*" * 100
		p @request
		p "*" * 100
		# @TODO: redirect to developer's requests tab
		redirect_to root_path
	end

	def update
		request = Request.find(params[:id])
		project = Project.find(request.project_id)
		project.update(developer_id: request.developer_id)
		request.destroy
		redirect_to customer_path

	end

	def destroy

		Request.find(params[:id]).destroy
	end

end
