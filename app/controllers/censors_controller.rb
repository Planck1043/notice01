class CensorsController < ApplicationController

  def index
    # where 语句用散列子集确定选择条件
    @censor_notices = Notice.where(notice_state:  ['审核通过','审核中' ]).paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @notice = Notice.find(params[:format])
    @censors = @notice.censors

    @censor = Censor.new
  end

  def create
    @notice = Notice.find(params[:notice_id])
    @censor = Censor.new(censor_params)
    @censor.notice = @notice

    if @censor.save
      @notice.inspection = "需要修改"
      @notice.modify_number += 1
      @notice.save

      redirect_to censors_path
    else
      render "new"
    end
  end

  def censor_success
    @notice = Notice.find(params[:format])
    @notice.notice_state = "审核通过"
    @notice.inspection = "通过"

    @notice.save
    redirect_to new_censor_path(@notice)
  end

  private

  def censor_params
    params.require(:censor).permit(:text)
  end
end
