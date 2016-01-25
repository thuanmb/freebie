class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :publish, :close, :reopen]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.published_posts

    location_id = get_location_id
    @posts = Post.by_location(@posts, location_id)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    if @post.user == current_user || @post.published?
      render :show
    else
      render :post_not_found, status: 404
    end
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
    @categories = Category.all
    @location = current_user.contact_city
  end

  # GET /posts/1/edit
  def edit
    @categories = Category.all
    @location = current_user.contact_city
  end

  # GET /posts/1/edit
  def my
    @posts = Post.where(user: current_user).order(created_at: :desc)
  end

  # POST /posts
  # POST /posts.json
  def create
    #@post = Post.new(post_params)

    @post = current_user.posts.build(post_params)
    @post.status = 'drafted'
    @post.set_category params[:post][:category]

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        @post.set_category params[:post][:category]
        format.html { redirect_to my_posts_path, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def publish
    @post.publish
    if @post.save
      redirect_to my_posts_path, notice: "'#{@post.title}' is published"
    else
      redirect_to my_posts_path
    end
  end

  def close
    @post.close
    if @post.save
      redirect_to my_posts_path, notice: "'#{@post.title}' is closed"
    else
      redirect_to my_posts_path
    end
  end

  def byLocation
    # TODO: get the posts by its location
    # location = params[:location] // for example: Hồ Chí Minh
    render json: Post.published_posts
  end

  def search
    if params[:category] != nil
      categories = params[:category].split(",")
    end

    if params[:city] != nil
      cities = params[:city].split(",")
    end

    # TODO: filter post by categories
    # TODO: filter post by cities

    # TODO: use the filtered list

    if params[:keyword] != nil
      keyword = params[:keyword]
      @posts = Post.search(title: keyword)
    end

    render :template => 'posts/index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :main_image, :location)
    end

    def get_location_id
      if params[:location] != nil
        LOCATION_LIST.each do |location|
          if location[:name].include?(params[:location])
            return location[:id]
          end
        end
      end
    end
end
