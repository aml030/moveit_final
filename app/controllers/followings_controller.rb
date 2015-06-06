class FollowingsController < ApplicationController
  def index
    @followings = current_user.followings
  end

  def show
    @following = Following.find(params[:id])
  end

  def new
    @following = Following.new
  end

  def create
    @following = Following.new
    @following.approved = params[:approved]
    @following.follower_id = params[:follower_id]
    @following.leader_id = params[:leader_id]

    if @following.save
      redirect_to "/followings", :notice => "Following created successfully."
    else
      render 'new'
    end
  end

  def edit
    @following = Following.find(params[:id])
  end

  def update
    @following = Following.find(params[:id])

    @following.approved = params[:approved]
    @following.follower_id = params[:follower_id]
    @following.leader_id = params[:leader_id]

    if @following.save
      redirect_to "/followings", :notice => "Following updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @following = Following.find(params[:id])

    @following.destroy

    redirect_to "/followings", :notice => "Following deleted."
  end
end
