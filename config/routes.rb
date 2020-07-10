Rails.application.routes.draw do
  namespace :api do
    get "/chairs" => "chairs#index"
    get "/chairs/:id" => "chairs#show"
    post "/chairs" => "chairs#create"
    patch "/chairs/:id" => "chairs#update"
  end
end
