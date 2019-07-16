# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
redirect "/", to: "/signin"

get '/signin', to: 'sessions#new'
post '/signin', to: 'sessions#create', as: :signin
