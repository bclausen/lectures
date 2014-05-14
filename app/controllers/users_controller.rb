class UsersController < ApplicationController
	def new 
		@users = User.all
		@user = User.new
	end

	def post
		nick = params[:user][:nickname]
		pw = params[:user][:password]
		pw_conf = params[:user][:password_confirmation]
		@user = User.new(:nickname=> nick,:password=> pw)
		if @user.save then
			redirect_to users_path,
			notice: "Ihr Benutzerkonto wurde angelegt!"
		else
			render "new"
		end
		# redirect_to users_path
	end

	# def new
	# 	@users=User.new
	# end

end
