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
    @posts = @notice.posts
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

  private

  def notice_params
    params.require(:notice).permit(:title, :text, :notice_item_id,:notice_state, :class_type)
  end
end
