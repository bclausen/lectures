class SessionsController < ApplicationController

	def new
	end

	def post
		user = User.find_by(nickname: params[:session][:nickname].downcase)

		if user && user.authenticate(params[:session][:password]) then
			#sign_in user
			redirect_to user_path(user)
		else
			redirect_to sessions_path
		end
	end
end