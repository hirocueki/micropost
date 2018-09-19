class CommentsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]
  before_action :set_item, only: [:create, :destroy]
  before_action :set_comment, only: [:destroy]

  def create
    @comment = @item.comments.build(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@user,@item], notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to [@user, @item], notice: 'コメントの投稿に失敗しました'}
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to [@user,@item], notice: 'Comment was successfully created.' }
    end
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_item
    @item = @user.items.find(params[:item_id])
  end

  def set_comment
    @comment = @item.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
