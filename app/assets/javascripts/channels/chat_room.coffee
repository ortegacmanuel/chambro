jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  if messageId = messages.data('chat-room-id')
    App.conversation = App.cable.subscriptions.create {
        channel: "ChatRoomChannel"
        chat_room_id: messages.data("chat-room-id")
      },
      connected: ->
        console.log("connected to chat room channel")

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        console.log("received")
        $('#bottom-of-messages-thread').remove();
        messages.append(data.message)
        messages.append("<div id='bottom-of-messages-thread' class='pt-2'></div>");
        document.getElementById("bottom-of-messages-thread").scrollIntoView();
