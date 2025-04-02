class MessagesController < ApplicationController
  before_action :set_chat_room

  def create
    @message = @chat_room.messages.new(message_params)

    if @message.save
      # ✅ Correct Broadcast Format
      ActionCable.server.broadcast(
        "chat_room_#{@chat_room.id}",
        { message: @message.content }  # Ensure this sends JSON
      )
      render json: { status: "success", message: @message.content }, status: :created
    else
      render json: { status: "error", errors: @message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_chat_room
    @chat_room = ChatRoom.find_by(id: params[:chat_room_id])
    return render json: { error: "Chat room not found" }, status: :not_found unless @chat_room
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
