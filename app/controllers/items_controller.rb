class ItemsController < ApplicationController
  before_action :authenticate_user!, only: %i(create destroy update)
  before_action :set_user, only: %i(show edit update destroy)
  before_action :set_item, only: %i(show edit update destroy)

  def index
    @items = @user.items
  end

  def show
    @comment = Comment.new
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = current_user.items.build(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to [@user,@item], notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to [@user,@item], notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_item
      @item = @user.items.find(params[:id])
    end



    def item_params
      params.require(:item).permit(:title, :content, :tag_list)
    end
end
