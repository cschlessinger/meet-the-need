class ReviewRequestsController < ApplicationController

   def create
    customer = Project.find(params[:format]).customer
    @review_request = ReviewRequest.create(developer_id: current_developer.id, project_id: params[:format], customer_id: customer.id)
    redirect_to developer_path(current_developer)
  end

  def update
    review_request = ReviewRequest.find(params[:id])
    project = Project.find(review_request.project_id)
    project.update(is_completed: true)
    review_request.destroy
    redirect_to customer_path(current_customer)
  end

  def destroy
    ReviewRequest.find(params[:id]).destroy
    redirect_to customer_path(current_customer)
  end

end
