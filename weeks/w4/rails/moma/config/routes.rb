Rails.application.routes.draw do
  root :to => 'works#index'
  resources :artists
  resources :works
end

# Prefix Verb   URI Pattern            Controller#Action
#      artist POST   /artist(.:format)      artists#create
#  new_artist GET    /artist/new(.:format)  artists#new
# edit_artist GET    /artist/edit(.:format) artists#edit
#             GET    /artist(.:format)      artists#show
#             PATCH  /artist(.:format)      artists#update
#             PUT    /artist(.:format)      artists#update
#             DELETE /artist(.:format)      artists#destroy
# Rosalinds-MacBook-Pro:moma Ros$ rake routes
#      Prefix Verb   URI Pattern            Controller#Action
#      artist POST   /artist(.:format)      artists#create
#  new_artist GET    /artist/new(.:format)  artists#new
# edit_artist GET    /artist/edit(.:format) artists#edit
#             GET    /artist(.:format)      artists#show
#             PATCH  /artist(.:format)      artists#update
#             PUT    /artist(.:format)      artists#update
#             DELETE /artist(.:format)      artists#destroy
#       works POST   /works(.:format)       works#create
#   new_works GET    /works/new(.:format)   works#new
#  edit_works GET    /works/edit(.:format)  works#edit
#             GET    /works(.:format)       works#show
#             PATCH  /works(.:format)       works#update
#             PUT    /works(.:format)       works#update
#             DELETE /works(.:format)       works#destroy
