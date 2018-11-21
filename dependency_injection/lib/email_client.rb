class EmailClient
  def message(message_class = Message)
    message_class.new
  end
end

class Message
  def send(to, body)
    true
  end
end

class SayHelloToMyLittleFriend
  def run(email_client_class = EmailClient)
    email = email_client_class.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
