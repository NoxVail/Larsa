module API
  module V1
    class TelegramBot < Grape::API
      desc 'telegram_bot'
      post root: :message do
        token = Rails.configuration.bot_token
        channel = Rails.configuration.bot_channel
        text = params[:message][:text].to_s.gsub('/', '')
        bot = Telegram::Bot::Client.new(token)
        bot.send_message(chat_id: channel, text: text)
      end
    end
  end
end