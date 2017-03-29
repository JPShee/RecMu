class MessagesController < ApplicationController
	def index
		@messages = current_user.messages 
	end

	def received_messages
		@messages = Message.where(reply_id: current_user.id, replied: false)
	end

	def replied_messages
		@replied_messages = Message.where(reply_id: current_user.id, replied: true)
	end

	def new
		@message =current_user.messages.new
		@users = User.all
	end

	def create
		@message = current_user.messages.new(message_params)
		user = User.find_by(username: params["Username"])
		if user 
			@message.reply_id = user.id
			if @message.save 
				redirect_to '/messages'
			else
				redirect_to '/message/new', notice: "Message not created"
			end
		else
			redirect_to '/messages/new', notice: "User not found"
		end
	end


	def reply_message
		@to_reply = Message.find_by(id: params[:id])
		sender = @to_reply.sender
		@message = Message.new(sender_id: current_user.id, reply_id: sender.id, replied: true)
	end

	def create_reply
		@message = current_user.messages.new(reply_id: params["reply Id"].to_i, body: message_params[:body], replied: true)
		if @message.save
			redirect_to '/messages/received'
		else
			redirect_to '/messages/received', notice: "Error replying to message"
		end

	end
	
	private 
	def message_params
		params.require(:message).permit(:body)
	end
end
