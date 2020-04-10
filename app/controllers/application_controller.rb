class ApplicationController < ActionController::Base

  def echo
    token = ENV['TELEGRAM_BOT_TOKEN']
    channel = ENV['TELEGRAM_BOT_CHANNEL']

    text = params[:message]

    bot = Telegram::Bot::Client.new(token)
    bot.echo(chat_id: channel, text: text)
  end
end


#Grape:
#Twitter::API.compile!
#params = [:text]