class DeveloperTechnologiesController < ApplicationController

	def new
	  @developer_technology = DeveloperTechnology.new
	end

	def create
		@developer_technology = DeveloperTechnology.new(strong_params)

		respond_to do |format|
			if @developer_technology.save
				format.html { redirect_to 'developers#show', notice: 'Developer_technology was successfully created.' }
				format.json { render :show, status: :created, location: @developer_technology }
			else
				format.html { render :new }
				format.json { render json: @developer_technology.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
	  set_developer_technology
	  @developer_technology.destroy
	  respond_to do |format|
	    format.html { redirect_to 'developers#show', notice: 'Developer was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

	private

	def set_developer_technology
	  @developer_technology = DeveloperTechnology.where(developer_id: :id, technology_id: :technology_id).first
	end

	def strong_params
		params.require(:developer_technology).permit(:developer_id, :technology_id)
	end

end
