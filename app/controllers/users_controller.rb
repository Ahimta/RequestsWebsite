class UsersController < ApplicationController
	before_filter { @users_link = 'active' }
	before_filter :get_user, only: [:show, :edit, :update, :destroy]
	
	def get_user
		@user = User.find params[:id]
	end
	
	def index
		@users = User.all
	end
	
	def new
		@user = User.new
		@user.build_location
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
	
	def edit
	end
	
	def update
		@user.attributes = params[:user]
		
		if @user.save
			redirect_to users_path
		else
			render :edit
		end
	end
	
	def destroy
		@user.destroy
		redirect_to users_path
	end
	
	def login
		login = params[:login]
		username, password = login[:username], login[:password]
		
		user = User.where("lower(username) = ?", username.downcase).first
		
		if user and user.authenticate password
			session[:user_id] = user.id
			flash[:notice] = t('users.login.notice')
		else
			flash[:warning] = t('users.login.warning')
		end
		
		redirect_to requests_path
	end
	
	def logout
		reset_session
		redirect_to requests_path, notice: t('users.logout.notice')
	end
end
