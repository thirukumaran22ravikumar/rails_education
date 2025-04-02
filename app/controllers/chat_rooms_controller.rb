class ChatRoomsController < ApplicationController
  def show
     @chat_room = ChatRoom.find(params[:id])
  end

  def create
    @chat_room = ChatRoom.create(name: "Chat Room #{ChatRoom.count + 1}")
    redirect_to @chat_room
  end

  private

  def set_chat_room
    @chat_room = ChatRoom.find(params[:id])
  end

end
