class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
   @post = Post.find(params[:id])
 end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully added!"
      redirect_to  posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post= Post.find(params[:id])
    if @post.update(params[:post])
      flash[:notice] = "Post successfully updated!"
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    flash[:notice] = "Post successfully deleted!"
  end

  private
    def post_params
      params.require(:post).permit(:title, :entry)
    end

end
