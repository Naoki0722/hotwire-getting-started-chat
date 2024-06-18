module Messages
  class EvaluationsController < ApplicationController
    before_action :set_message

    def update
      @message.update!(messages_params)
      flash.now[:notice] = '更新しました'
    end

    private

    def set_message
      @message = Message.find(params[:message_id])
    end

    def messages_params
      params.require(:message).permit(:evaluation)
    end
  end
end
