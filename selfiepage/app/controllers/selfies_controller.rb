class SelfiesController < ApplicationController
	before_action :set_selfy, only: [:show, :edit, :update, :destroy]
	
	def index
		@selfies = Selfy.all
	end

	def show
		
	end

	def new
		@selfy = Selfy.new
	end

	def edit

	end

	def create
		@selfy = Selfy.new(task_params)
		if @selfy.save
			redirect_to selfy_path(@selfie)
		else
			render :new
		end
	end

	def update
	end

	def destroy
		if @selfy.destroy
			redirect_to '/'
		else
			redirect_to selfy_path(@selfy)
		end
	end

	private
	def selfy_params
		params.require(:selfy).permit(:body)
	end

	def set_selfy
		@selfy = Selfy.find(params[:id])
	end
end