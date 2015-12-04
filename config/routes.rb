Recordly::Application.routes.draw do
  root to: 'songs#index'
  resources :songs
  resources :albums
  resources :artists
  get 'get_query', to: 'objects#get_query'
  post 'search', to: 'objects#search'
end
