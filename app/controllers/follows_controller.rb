class FollowsController < ApplicationController

  def create
    Follow.create(follower_id: current_user.id, followed_user_id: params[:id])
    redirect_to profile_path(params[:id])
  end

  def destroy
    Follow.find_by(follower_id: current_user.id, followed_user_id: params[:id]).destroy
    redirect_to profile_path(params[:id])
  end
end
