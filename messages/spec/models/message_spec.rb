require 'spec_helper'

describe Message do
  before do
    @message = Message.new(title: "foo", text: "bar", recipient: mock_model("User"))
  end
  it "is valid with valid attributes" do
    @message.should be_valid
  end
  it "is not valid without a title" do
    @message.title = nil
    @message.should be_invalid
  end
  it "is not valid without text" do
    @message.text = nil
    @message.should be_invalid
  end
  it "is not valid without a recipient" do
    @message.recipient = nil
    @message.should be_invalid
  end
end
