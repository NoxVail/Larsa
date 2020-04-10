Rails.application.routes.draw do
  post '/message' => 'application#send_message'
  #mount Twitter::API => '/'
  mount API::Base, at: "/"
end
