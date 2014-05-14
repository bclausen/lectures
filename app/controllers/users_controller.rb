class UsersController < ApplicationController
	def new 
		@users = User.all
		@user = User.new
	end

	def create
		nick = params[:user][:nickname]
		pw = params[:user][:password]
		pw_conf = params[:user][:password_confirmation]
		@user = User.new(:nickname=> nick,:password=> pw)
		if @user.save then  #Die Methode save wird ausgeführt und der Rückgabewert
							#bedingt die Verzweigung
			redirect_to users_path,
			notice: "Ihr Benutzerkonto wurde angelegt!"
		else
			@users = User.all
			render "new"
		end
		# redirect_to users_path
	end

	# def new
	# 	@users=User.new
	# end

end
