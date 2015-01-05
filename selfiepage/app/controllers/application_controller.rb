class ApplicationController < ActionController::Base
class TasksController < ApplicationController
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
		@selfy = Selfy.new(selfy_params)
		if @selfy.save
			redirect_to selfy_path(@selfy)
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

	def selfy_task
		@selfy = Selfy.find(params[:id])
	end
end
end
