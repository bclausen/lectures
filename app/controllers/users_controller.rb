class UsersController < ApplicationController
	def new 
		@users = User.all
		@user = User.new
	end

	def post

	end
	# def new
	# 	@users=User.new
	# end

end
