module ApplicationHelper
  def bootstrap_class_for flash_type
    { success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      warning: "alert-warning",
      notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in container") do
              concat content_tag(:i, '', class: "fa fa-times close", data: { dismiss: 'alert' })
              concat message
            end)
    end
    nil
  end

  def avatar_url_for(user, size = 50, title = user.name)
    user.avatar_url || gravatar_image_url(user.email, size: size)
  end
end
