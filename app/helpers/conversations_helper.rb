module ConversationsHelper
  def mailbox_section(title, current_box)
    link_class = 'nav-link'
    link_class += ' active' if title.downcase == current_box
    content_tag :li, link_to(title.capitalize, admin_conversations_path(box: title.downcase), class: link_class), class: 'nav-item'
  end
end
