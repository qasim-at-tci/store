Rails.application.routes.draw do
  get '/_healthz', to:'application#health'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[ show create update destroy ]
      resources :tokens, only: [ :create ]
    end
  end
end
