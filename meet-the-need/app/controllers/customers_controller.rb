class CustomersController < ApplicationController
  include CustomerProjectMatcherHelper

  before_action :set_customer, only: [:show, :profile, :edit, :update, :destroy]
  before_action :authenticate_customer!, except: [:profile]


  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    customer_projects = current_customer.projects
    @customer_project_requests = []
    customer_projects.each do |project|
      if project.requests.any?
        @customer_project_requests << project.requests
      end
    end

    @customer_project_review_requests = []
    customer_projects.each do |project|
      if project.review_requests.any?
        @customer_project_review_requests << project.review_requests
      end
    end

    @current_projects = @customer.projects.where(is_completed: false)
    @completed_projects = @customer.projects.where(is_completed: true)
    @requests = Request.where(customer_id: @customer.id)
    # find the top three developers associated with the project
    if request.xhr?
      order_id = params[:order_id].split(' ')[0].to_i
      customer_project_matcher(order_id)
      render "match_developers", layout: false
    else
      customer_project_matcher(0)
    end

    @conversation = Conversation.new

  end

  def profile
    render 'profile'
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :zipcode, :bio)
    end
end
