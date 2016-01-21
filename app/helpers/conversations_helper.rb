module ConversationsHelper
  def mailbox_section(title, type, current_box, params)
    link_class = 'nav-link'
    link_class += ' active' if type.downcase == current_box
    url_params = {box: type}
    url_params = url_params.merge(conversation: params[:conversation]) if params[:conversation]
    content_tag :li, link_to(title.capitalize, me_conversations_path(url_params), class: link_class), class: 'nav-item'
  end
end
