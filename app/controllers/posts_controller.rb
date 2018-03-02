class PostsController < ApplicationController
  def new
    @notice = Notice.find(params[:notice_id])
    @post = Post.new
  end

  def create
    @notice = Notice.find(params[:notice_id])
    @post = Post.new(post_params)
    @post.notice = @notice

    if @post.save
      redirect_to notice_path(@notice)
    else
      render "new"
    end
  end

  def destroy
    @post = Post.find(params[:notice_id])
    @notice = @post.notice
    @post.destroy

    redirect_to notice_path(@notice)
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
