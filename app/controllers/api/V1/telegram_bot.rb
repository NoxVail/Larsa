module API
  module V1
    class TelegramBot < Grape::API
      desc 'telegram_bot'
      post root: :message do
        channel = Rails.configuration.bot_channel
        text = params[:message][:text].to_s.gsub('/', '')
        response = TelegramHandler.new(text: text).send(text)
        @bot.send_message(text: response, chat_id: channel)
      end
    end
  end
end
