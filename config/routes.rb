Rails.application.routes.draw do
 resources :parks
 get 'explore_parks/random', to: 'parks#random'
end
