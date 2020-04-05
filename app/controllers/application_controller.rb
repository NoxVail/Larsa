class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def send_message
    token = ENV['TELEGRAM_BOT_TOKEN']
    channel = ENV['TELEGRAM_BOT_CHANNEL']

    text = params[:message]

    bot = Telegram::Bot::Client.new(token)
    bot.send_message(chat_id: channel, text: text)
    redirect_to root_path
  end

  def show

  end
end
