Rails.application.routes.draw do
  namespace :api do
    get "/chairs" => "chairs#index"
    get "/chairs/:id" => "chairs#show"
  end
end
