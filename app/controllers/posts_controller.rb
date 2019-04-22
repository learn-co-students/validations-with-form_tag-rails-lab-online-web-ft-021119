class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def new
    @post = Post.new
  end

  def create
    byebug
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
    redirect to 'posts/show/:id'
  end

  def edit
    @post = Post.find(params[:id])
    redirect_to 'posts/show/:id'
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
