class PostsController < ApplicationController
  def index
    @posts = Post.all
    @pic = "a.jpg"
    
    @user_email =""
    unless session[:user_id].nil?
    @user_email = User.find(session[:user_id]).email
    end

  end
  
  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  
  def new
  end
  
  def create
    post = Post.new
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.image = params[:pic]

    post.save
    
    redirect_to '/'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy!
    
    redirect_to '/'
  end
  
  # 수정하기~
  
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    
    redirect_to '/'
  end
  
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/'
  end
  
end
