module API
  module V1
    class TelegramBot < Grape::API
      desc 'telegram_bot'
      post root: :message do
        token = ENV['TELEGRAM_BOT_TOKEN']
        channel = ENV['TELEGRAM_BOT_CHANNEL']
        text = params[:message][:text].to_s.gsub('/', '')
        bot = Telegram::Bot::Client.new(token)
        bot.send_message(chat_id: channel, text: text)
      end
    end
  end
end