module API
  module V1
    class Base < Grape::API
      before do
        initialize_bot
      end

      helpers do
        def initialize_bot
          token = Rails.configuration.bot_token
          @bot = Telegram::Bot::Client.new(token)
        end
      end

      mount API::V1::TelegramBot
    end
  end
end
