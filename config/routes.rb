Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  resources "entries"
  # get("/", { :controller => "things", :action => "index" })
  # Defines the root path route ("/")
  root "places#index"
  # get("/", { :controller => "articles", :action => "index" })
end
