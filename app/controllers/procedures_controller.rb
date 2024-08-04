class ProceduresController < ApplicationController
  before_action :set_procedure, only: [:destroy, :show, :edit, :update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :redirect_if_not_authorized, :redirect_if_sold_out, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if current_user
      @hospital_name = current_user.hospital_name
      @ward = current_user.ward
    else
      @hospital_name = nil
      @ward = nil
    end
  end

  def show
    @procedure = Procedure.find(params[:id])
    @user = @procedure.user
  end

  def new
    @procedure = Procedure.new
  end

  def create
    @procedure = current_user.procedures.build(procedure_params)
    if @procedure.save
      redirect_to @procedure, notice: '手続きが正常に作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def set_procedure
    @procedure = Procedure.find(params[:id])
  end

  def procedure_params
    params.require(:procedure).permit(:title, :material, :text, :category_id, :image).merge(user_id: current_user.id)
  end
end
