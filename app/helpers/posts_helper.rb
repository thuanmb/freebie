module PostsHelper
  def post_style_class
    "label-success"
  end

  def post_status(post)
    "posts.status.#{post.status}"
  end 
end
