Rails.application.routes.draw do
  namespace :api do
    get "/chairs" => "chairs#index"
  end
end
