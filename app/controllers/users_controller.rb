class UsersController < ApplicationController
	before_filter { @users_link = 'active' }
	before_filter :get_user, only: [:show, :edit, :update, :destroy]
	before_filter :require_admin, except: [:login, :logout]
	skip_before_filter :require_login, only: [:login]
	
	def index
		@users = User.includes(User::INCLUDES_ALL).load
	end
	
	def show
	end
	
	def new
		@user = User.new
		@user.build_location
	end
	
	def create
		@user = User.new params[:user]
		
		if @user.save
			redirect_to users_path, notice: t(:create_user_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@user.attributes = params[:user]
		
		if @user.save
			redirect_to users_path, notice: t(:update_user_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
	
	def destroy
		@user.destroy
		redirect_to users_path
	end
	
	def login
		user = User.login(params[:login])
		
		if user
			session[:user_id] = user.id
			flash[:notice] = t(:login_notice)
			redirect_to requests_path
		else
			flash[:warning] = t(:login_warning)
			redirect_to home_page_path
		end
	end
	
	def logout
		reset_session
		redirect_to home_page_path, notice: t(:logout_notice)
	end
	
	
	private
	
	def get_user
		@user = User.includes(User::INCLUDES_FIND).find params[:id]
	end
end
