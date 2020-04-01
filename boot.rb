require 'telegram/bot'

token = '903370338:AAEsmhqZHZ_V7ggvEPo7vlBWiZevgNjj5B4'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    bot.api.send_message(chat_id: message.chat.id, text: message)
  end
end