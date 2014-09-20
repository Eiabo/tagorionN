class NamesController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "burbank42", except:[:index, :show]

	def new
		@name = Name.new
	end

	def edit
		@name = Name.find(params[:id])
	end

	def index
		@names = Name.all
	end

	def show
		@name = Name.find(params[:id])
	end

	def create
		@name = Name.new(name_params)

		if @name.save
			redirect_to @name
		else
			render 'new'
		end
	end

	def update
		@name = Name.find(params[:id])

		if @name.update(name_params)
			redirect_to @name
		else
			render 'edit'
		end
	end

	def destroy
		@name = Name.find(params[:id])
		@name.destroy

		redirect_to names_path
	end

	private
		def name_params
			params.require(:name).permit(:namalengkap, :npm)
	end
end