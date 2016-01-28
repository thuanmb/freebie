class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :publish, :close, :reopen]
  before_action :authenticate_user!, except: [:index, :show, :search]

  # GET /posts
  # GET /posts.json
  def index
    # debugger
    @posts = Post.published
    @posts = @posts.by_location(session[:current_location]) if get_location_id.present?
    @posts = @posts.paginate(:page => params[:page])
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    if @post.user == current_user || @post.published?
      @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      render :show
    else
      render :post_not_found, status: 404
    end
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
    @post.expiring_date = Date.today + 14
    @categories = Category.all
    @location = current_user.contact_city
  end

  # GET /posts/1/edit
  def edit
    @categories = Category.all
    @location = current_user.contact_city
  end

  def my
    @posts = Post.where(user: current_user).order(created_at: :desc)
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.build(post_params)
    @post.status = 'published'
    @post.expiring_date = Date.today + 14 if @post.expiring_date.nil?
    @post.set_category params[:post][:category]

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path(@post, new_post: true), flash: { notice: 'Post was successfully created.' } }
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
    render json: Post.published
  end

  def search
    categories = params[:category].split(",") if params[:category].present?
    cities = params[:city].split(",") if params[:city].present?
    keyword = params[:keyword] if params[:keyword].present?

    # debugger
    @posts = keyword.present? ? Post.by_keyword(keyword) : Post.published
    @posts = @posts.by_location(cities) if cities.present? && !cities.empty?
    @posts = @posts.by_categories(categories) if categories.present? && !categories.empty?
    @posts = @posts.paginate(:page => params[:page])

    render :template => 'posts/index'
  end

  def request_post
    # debugger
    @post = Post.find(params[:id])
    subject = "#{request_params[:name]} - #{request_params[:email_or_phone]} at #{request_params[:address]} contacted for post #{@post.title}"
    conversation = current_user.send_message(@post.user, request_params[:message], subject).conversation
    flash[:success] = "Message has been sent!"
    redirect_to post_path(@post)
  end

  def send_message
    @post = Post.find(params[:id])
    @sender = User.find(request_params[:sender_id])

    subject = I18n.t('email.message_subject', {user_name: @sender.name, post_name: @post.title})
    conversation = current_user.send_message(@post.user, request_params[:message], subject).conversation
    render plain: "success"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :main_image, :location, :expiring_date)
    end

    def request_params
      params.require(:request).permit(:message, :sender_id)
    end

    def get_location_id
      location_hash = LOCATION_LIST.find { |e| e[:name] == params[:city] || e[:id] == params[:city] }
      session[:current_location] = location_hash[:id] if location_hash
      session[:current_location]
    end
end
