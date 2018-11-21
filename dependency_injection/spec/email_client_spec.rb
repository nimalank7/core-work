require "email_client"
describe SayHelloToMyLittleFriend do
  let(:message_class){double :message_class, new: message_instance}
  let(:message_instance){double :message_instance, send: true}
  let(:email_client_class){double :email_client_class, new: email_client}
  let(:email_client){double :email_client, message: message_class.new}
  it "returns true when sending a message" do
    shtmlf = SayHelloToMyLittleFriend.new
    expect(shtmlf.run(email_client_class)).to eq true
  end
end
