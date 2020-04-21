# README

Here is an instruction how to use Larsa_bot:
1. Clone this repository:
   git clone https://github.com/NoxVail/Larsa.git
2. Install docker & ngrok on your PC.
3. Start docker & ngrok:
   docker-compose build
   docker-compose up
   ngrok http 3000
4. Sign bot on webhook:
   https://api.telegram.org/bot"here is bot_token"/setWebhook?url=https://"here is ngrok url"
5. Try to write something to bot, using '/' before your message. Just like that:
   "/hello, Larsa_bot!"
6. Bot will return your message because it working like echo-bot now.
