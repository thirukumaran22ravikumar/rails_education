class ChatRoomChannel < ApplicationCable::Channel
   def subscribed
  
    if params[:room_id].present?
      chat_room = ChatRoom.find_by(id: params[:room_id])
      if chat_room
        stream_from "chat_room_#{chat_room.id}"
        puts "✅ Subscribed to ChatRoom #{chat_room.id}"
      else
        reject_subscription
      end
    else
      puts "❌ ChatRoom ID is missing in params"
      reject_subscription
    end
  end

  def receive(data)
    chat_room = ChatRoom.find_by(id: data["room_id"])
    if chat_room
      message = chat_room.messages.create!(content: data["message"])
      ChatRoomChannel.broadcast_to(chat_room, { message: message.content })
      puts "✅ Message broadcasted: #{message.content}"
    else
      puts "❌ ChatRoom not found for received message"
    end
  end

end
