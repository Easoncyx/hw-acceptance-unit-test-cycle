Rottenpotatoes::Application.routes.draw do
  root 'movies#index'
  resources :movies
  # map '/' to be a redirect to '/movies'
  # root :to => redirect('/movies')
  match '/movies/:id/similar(.:format)', to: 'movies#similar', as: 'movie_similar', via: :get
  # get 'movies/director/:id', to: 'movies#director', as: 'movies_director'
end
