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
	
	def login
		login = params[:login]
		username, password = login[:username], login[:password]
		
		user = User.where("username = ?", username).first
		
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
