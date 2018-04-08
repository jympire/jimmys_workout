class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end
  
  def show
  end
  
  def new
    @post = current_user.posts.build
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: "Saved."
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:date, :content)
  end
  
  def find_post
    @post = Post.find(params[:id])
  end
end
