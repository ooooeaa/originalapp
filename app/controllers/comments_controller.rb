class CommentsController < ApplicationController
  def create
    @procedure = Procedure.find(params[:procedure_id])
    @comment = @procedure.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to procedure_path(@procedure), notice: 'コメントが投稿されました。'
    else
      redirect_to procedure_path(@procedure), alert: 'コメントの投稿に失敗しました。'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
