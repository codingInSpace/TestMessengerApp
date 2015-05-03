class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end

	def new
		@message = Message.new
	end

	private 
	def message_params 
		params.require(:message).permit(:content) 
	end
end
