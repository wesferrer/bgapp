class CommentsController < ApplicationController
  before_action :set_comments, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comment_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update_attributes(comment_params)
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end


  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end

  def set_comments
    @comment = Comment.find(params[:id])
  end

end
