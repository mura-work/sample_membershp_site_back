Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations',
        sessions: 'api/v1/auth/sessions'
      }

      namespace :auth do
        get 'authentication' => "authentication#whoami"
      end

      get '/test', to: 'test#home'
      resources :content_movies, only: [:index, :show, :create]
    end
  end
end