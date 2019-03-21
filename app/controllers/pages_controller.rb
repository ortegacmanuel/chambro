class PagesController < ApplicationController
  def home
    @chat_rooms = ChatRoom.all
  end
end
