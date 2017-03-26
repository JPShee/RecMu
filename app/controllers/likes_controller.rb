class LikesController < ApplicationController
	def likes
	end

	def create
		current_user.update(
			likes: params[:user_likes]
		)

		head 200
	end
end
