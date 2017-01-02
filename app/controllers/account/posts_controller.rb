class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
    @post = Post.find()
    redirect_to group_post_path
  end

  def destroy
    @post = Post.destroy
    redirect_to group_post_path, alert: "You have no permission."

  end


end
