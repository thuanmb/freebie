class Me::ConversationsController < AdminController
  before_action :get_mailbox
  before_action :get_conversations, only: [:index, :new]

  def index
    conversation_id = params[:conversation]
    if (conversation_id)
      @conversation = @mailbox.conversations.find(conversation_id)
      @conversation.mark_as_read(current_user)
    end
  end

  def new
  end

  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).conversation
    flash[:success] = I18n.t('message.sent.success')
    redirect_to me_conversations_path({conversation: conversation.id})
  end

  def reply
    get_conversation
    current_user.reply_to_conversation(@conversation, params[:body])
    flash[:success] = I18n.t('message.reply.success')
    redirect_to me_conversations_path({box: params[:box], conversation: params[:id]})
  end

  def destroy
    get_conversation
    @conversation.move_to_trash(current_user)
    flash[:success] = 'The conversation was moved to trash.'
    redirect_to me_conversations_path
  end

  def restore
    get_conversation
    @conversation.untrash(current_user)
    flash[:success] = 'The conversation was restored.'
    redirect_to me_conversations_path
  end

  def empty_trash
    @mailbox.trash.each do |conversation|
      conversation.receipts_for(current_user).update_all(deleted: true)
    end
    flash[:success] = 'Your trash was cleaned!'
    redirect_to me_conversations_path
  end

  private

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end

  def get_conversation
    @conversation ||= @mailbox.conversations.find(params[:id])
  end

  def get_box
    if params[:box].blank? or !["inbox","sent","trash"].include?(params[:box])
      params[:box] = 'inbox'
    end
    params[:box]
  end

  def get_conversations
    @box = get_box

    if @box.eql? "inbox"
      mailbox = @mailbox.inbox
    elsif @box.eql? "sent"
      mailbox = @mailbox.sentbox
    else
      mailbox = @mailbox.trash
    end

    @conversations = mailbox.paginate(page: params[:page], per_page: 10)
  end

end
