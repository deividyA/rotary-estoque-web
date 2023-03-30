Rails.application.routes.draw do
  root "site#index"

  get "/site", to: "site#index"
  get "/login", to: "login#index"
  get "/sign_up", to: "sign_up#index"
end
