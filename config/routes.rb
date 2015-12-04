Recordly::Application.routes.draw do
  resources :songs
  resources :albums
  resources :artists
  get 'get_query', to: 'objects#get_query'
  post 'search', to: 'objects#search'
end
