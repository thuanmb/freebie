module PostsHelper
  def post_style_class(post)
    return "label-success" if post.published?
    return "label-default" if post.closed?
    return "label-warning" if post.drafted?
    "label-danger"
  end

  def post_status(post)
    "posts.status.#{post.status}"
  end 
end
