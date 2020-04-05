Rails.application.routes.draw do
  root to: 'application#show'
  post '/message' => 'application#send_message'
end
