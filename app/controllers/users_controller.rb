class UsersController < ApplicationController
	def new 
		@users = User.all
		@user = User.new
	end

	def post
		nick = params[:user][:nickname]
		pw = params[:user][:password]
		pw_conf = params[:user][:password_confirmation]
		if User.new(:nickname=> nick,:password=> pw).authenticate pw_conf then
			User.new(:nickname=> nick,:password=> pw).save
		else

			User.new(:nickname=> nick,:password=> pw).save
			# @user = user
		end
		redirect_to users_path
	end

	# def new
	# 	@users=User.new
	# end

end
