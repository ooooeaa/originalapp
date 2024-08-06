class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @notices = Notice.order(created_at: :desc)
    return unless current_user

    @hospital_name = current_user.hospital_name
    @ward = current_user.ward
  end

  def show
    @user = @notice.user
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = current_user.notices.build(notice_params)
    if @notice.save
      redirect_to @notice, notice: '手続きが正常に作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @notice.destroy
    redirect_to root_path, notice: '手続きが削除されました。'
  end

  def edit
  end

  def update
    if @notice.update(notice_params)
      redirect_to @notice, notice: '手続きが正常に更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_notice
    @notice = Notice.find(params[:id])
  end

  def notice_params
    params.require(:notice).permit(:title, :text, :image).merge(user_id: current_user.id)
  end
end
