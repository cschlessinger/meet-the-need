class RequestsController < ApplicationController

	def new
		@request = Request.new

	end

	def create
		customer = Project.find(params[:project]).customer
		@request = Request.create(developer_id: current_developer.id, project_id: params[:project], customer_id: customer.id)
		# @TODO: redirect to developer's requests tab
		redirect_to root_path
	end

	def update
		request = Request.find(params[:id])
		project = Project.find(request.project_id)
		project.update(developer_id: request.developer_id)
		project.update(assigned_date: Time.now)
		project.update(is_completed: false)
		request.destroy
		redirect_to customer_path(current_customer)
	end

	def destroy
		Request.find(params[:id]).destroy
		redirect_to customer_path(current_customer)
	end

end
