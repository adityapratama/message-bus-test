class HomeController < ApplicationController
  def index
  end
  
  def send_message
    MessageBus.publish "/channel", "some message"
    render nothing: true
  end
end
