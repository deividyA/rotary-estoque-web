Rails.application.routes.draw do
  root "site#index"

  get "/site", to: "site#index"
end
