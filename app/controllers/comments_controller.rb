class CommentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html do
          flash[:success] = "Comment successfully added!"
          redirect_to post_path(@comment.post)
        end
        format.js
      end
    else
      flash[:danger] = "There was a problem creating your comment, please try again."
      render :new
    end
  end


  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)

      flash[:notice] = "Comment successfully updated!"
      redirect_to posts_path(@comment.post)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path(@comment.post)
    flash[:notice] = "Comment successfully deleted!"
  end


  private
    def comment_params
      params.require(:comment).permit(:commenter_name, :thoughts, :post_id)
    end
end
