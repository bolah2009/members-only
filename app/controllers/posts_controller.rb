# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :current_user, only: %i[new create]
  before_action :logged_in_user, only: %i[new create]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.order(:user_id)
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def logged_in_user
    return if logged_in?

    redirect_to login_path
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
