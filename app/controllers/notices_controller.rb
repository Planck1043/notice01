class NoticesController < ApplicationController
  def index
    @notices = Notice.all.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)

    if @notice.save
      redirect_to @notice
    else
      render "new"
    end
  end

  def show
    @notice = Notice.find(params[:id])
    @posts = @notice.posts.paginate(:page => params[:page], :per_page => 10)
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])

    if @notice.update(notice_params)
      redirect_to @notice
    else
      render "edit"
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    redirect_to notices_path
  end

  def notice_update
    @notice = Notice.find(params[:format])

    if @notice.notice_state == "审核通过"
      @notice.update(notice_state: "准备发布")
    elsif @notice.notice_state == "准备发布"
      @notice.update(notice_state: "已发布")
    elsif @notice.notice_state == "已发布"
      @notice.update(notice_state: "下架")
    end

    redirect_to notices_path
  end

  def post_update
    @notice = Notice.find(params[:format])

    if @notice.post_state == "评论开启"
      @notice.update(post_state: "评论关闭")
    else @notice.post_state == "评论关闭"
      @notice.update(post_state: "评论开启")
    end

    redirect_to notices_path
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :text, :notice_item_id,:notice_state, :class_type)
  end
end
