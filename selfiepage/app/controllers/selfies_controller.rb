class SelfiesController < ApplicationController
	def index
		@selfies = Selfy.all
	end

	def show
		@selfy = Selfy.all
	end

	def new
		@selfy = Selfy.new
	end

	def edit
		@selfy = Selfy.find(params[:id])
	end

	def create
		@selfy = Selfy.new(selfy_params)
		if @selfy.save
			redirect_to "/"
		else
			render :new
		end
	end

	def update
		@selfy = Selfy.find(params[:id])

		if @selfy.update(selfy_params)
			redirect to "/"
		else
			render :edit
		end
	end

	def destroy
		@selfy = Selfy.find(params[:id])
		if @selfy.destroy
			redirect_to "/"
		end
	end

	private
	def selfy_params
		params.require(:selfy).permit(:body)
	end

end