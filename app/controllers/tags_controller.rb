class TagsController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "burbank42", only: :destroy

	def create
		@name = Name.find(params[:name_id])
		@tag = @name.tags.create(tag_params)
		redirect_to name_path(@name)
	end

	def destroy
		@name = Name.find(params[:name_id])
		@tag = @name.tags.find(params[:id])
		@tag.destroy
		redirect_to name_path(@name)
	end

	private
		def tag_params
			params.require(:tag).permit(:tagger, :tagtext)
		end

end
