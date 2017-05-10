class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  
  def create
    post = Post.new
    post.title = params[:tt]
    post.content = params[:ct]
    post.save
    redirect_to '/home/index'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'
  end
  
  def edit
    @posts = Post.find(params[:post_id])
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:tt]
    post.content = params[:ct]
    post.save
    redirect_to '/home/index'
  end
  
   
end
