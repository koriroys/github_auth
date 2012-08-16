GithubAuth::Application.routes.draw do
  root to: 'static_pages#index'
  get '/auth/github', as: :github_auth
  match '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout
end
