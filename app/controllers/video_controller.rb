class VideoController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	before_action :authenticate_user!, except: [:index, :show]

def create
@post = Post.find(params[post_params])
  @video = @post_params.videos.create(params[:video])
  redirect_to event_path(@event)
end 


	def post_params
		params.require(:post).permit(:image, :title, :video, :description)
	end
end
