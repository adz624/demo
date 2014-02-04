class GroupsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :info]
  before_action :set_group, only: [:info, :show, :destroy, :update, :edit]

  def info
  end

	def index
		@group = Group.all
		##render :action=> 'index1'
	end

	def show
	end

	def destroy
		@group.destroy
		redirect_to groups_path
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		if @group.save
			redirect_to groups_path
		else
			render :new
			# =>render :action=> 'index1'
		end
	end

	def edit
	end

	def update
		if @group.update(group_params)
			redirect_to groups_path
		else
			render :edit
		end
	end

  private
  	def group_params
  		params.require(:group).permit(:title, :description)
  	end

    def set_group
      @group = Group.find(params[:id])
    end
end

