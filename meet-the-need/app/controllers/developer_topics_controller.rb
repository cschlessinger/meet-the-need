class DeveloperTopicsController < ApplicationController

	def new
	  @developer_topic = DeveloperTopic.new
	end

	def create
		@developer_topic = DeveloperTopic.new(strong_params)

		respond_to do |format|
			if @developer_topic.save
				format.html { redirect_to edit_developer_path(current_developer.id), notice: 'Developer_topic was successfully created.' }
				format.json { redirect_to edit_developer_path(current_developer.id), status: :created, location: @developer_topic }
			else
				format.html { render :new }
				format.json { render json: @developer_topic.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
	  @developer_topic = DeveloperTopic.find(params[:id])
	  @developer_topic.destroy
	  respond_to do |format|
	    format.html { redirect_to edit_developer_path(current_developer.id), notice: 'Developer was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_developer_topic
	  @developer_topic = DeveloperTopic.where(developer_id: :id, topic_id: :topic_id).first
	end

	def strong_params
		params.permit(:developer_id, :topic_id)
	end

end
