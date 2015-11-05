class ProjectTopicsController < ApplicationController

	# @TODO: make this all work

	def new
	  @project_topic = ProjectTopic.new
	end

	def create
		@project_topic = ProjectTopic.new(strong_params)

		respond_to do |format|
			if @project_topic.save
				format.html { redirect_to edit_project_path(current_project.id), notice: 'Project_topic was successfully created.' }
				format.json { redirect_to edit_project_path(current_project.id), status: :created, location: @project_topic }
			else
				format.html { render :new }
				format.json { render json: @project_topic.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
	  @project_topic = ProjectTopic.find(params[:id])
	  @project_topic.destroy
	  respond_to do |format|
	    format.html { redirect_to edit_project_path(current_project.id), notice: 'Project was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_project_topic
	  @project_topic = ProjectTopic.where(project_id: :id, topic_id: :topic_id).first
	end

	def strong_params
		params.permit(:project_id, :topic_id)
	end

end
