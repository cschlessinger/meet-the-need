class DeveloperTopicsController < ApplicationController

	# @TODO: make this all work

	def new
	  @developer_topic = DeveloperTopic.new
	end

	def create
		@developer_topic = DeveloperTopic.new(strong_params)

		respond_to do |format|
			if @developer_topic.save
				format.html { redirect_to 'developers#show', notice: 'Developer_topic was successfully created.' }
				format.json { render :show, status: :created, location: @developer_topic }
			else
				format.html { render :new }
				format.json { render json: @developer_topic.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
	  set_developer_topic
	  @developer_topic.destroy
	  respond_to do |format|
	    format.html { redirect_to 'developers#show', notice: 'Developer was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_developer_topic
	  @developer_topic = DeveloperTopic.where(developer_id: :id, topic_id: :topic_id).first
	end

	def strong_params
		params.require(:developer_topic).permit(:developer_id, :topic_id)
	end

end
