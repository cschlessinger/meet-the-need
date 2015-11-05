class ProjectTechnologiesController < ApplicationController

	def new
	  @developer_technology = ProjectTechnology.new
	end

	def create
		@developer_technology = ProjectTechnology.new(strong_params)
		respond_to do |format|
			if @developer_technology.save
				format.html { redirect_to edit_developer_path(current_developer.id), notice: 'Project_technology was successfully created.' }
				format.json { redirect_to edit_developer_path(current_developer.id), status: :created, location: @developer_technology }
			else
				format.html { render :new }
				format.json { render json: @developer_technology.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@developer_technology = ProjectTechnology.find(params[:id])	  
	  @developer_technology.destroy
	  respond_to do |format|
	    format.html { redirect_to edit_developer_path(current_developer.id), notice: 'Project was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_developer_technology
	  @developer_technology = ProjectTechnology.where(developer_id: :id, technology_id: :technology_id).first
	end

	def strong_params
		params.permit(:developer_id, :technology_id)
	end

end
