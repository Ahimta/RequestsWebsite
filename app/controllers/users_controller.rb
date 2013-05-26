class UsersController < ApplicationController
	before_filter { @users_link = 'active' }
	
	def index
		@users = User.all
	end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new params[:user]
		
		if @user.save
			redirect_to requests_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
end
