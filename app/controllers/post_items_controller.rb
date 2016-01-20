class PostItemsController < ApplicationController
  before_action :set_post_item, only: [:show, :edit, :update, :destroy]

  # GET /post_items
  # GET /post_items.json
  def index
    @post_items = PostItem.all
  end

  # GET /post_items/1
  # GET /post_items/1.json
  def show
  end

  # GET /post_items/new
  def new
    @post_item = PostItem.new
  end

  # GET /post_items/1/edit
  def edit
  end

  # POST /post_items
  # POST /post_items.json
  def create
    @post_item = PostItem.new(post_item_params)

    respond_to do |format|
      if @post_item.save
        format.html { redirect_to @post_item, notice: 'Post item was successfully created.' }
        format.json { render :show, status: :created, location: @post_item }
      else
        format.html { render :new }
        format.json { render json: @post_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_items/1
  # PATCH/PUT /post_items/1.json
  def update
    respond_to do |format|
      if @post_item.update(post_item_params)
        format.html { redirect_to @post_item, notice: 'Post item was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_item }
      else
        format.html { render :edit }
        format.json { render json: @post_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_items/1
  # DELETE /post_items/1.json
  def destroy
    @post_item.destroy
    respond_to do |format|
      format.html { redirect_to post_items_url, notice: 'Post item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_item
      @post_item = PostItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_item_params
      params.require(:post_item).permit(:category, :name, :description, :quantity)
    end
end
