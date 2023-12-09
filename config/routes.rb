Rails.application.routes.draw do
  get '/_healthz', to:'application#health'
end
