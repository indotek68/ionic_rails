Rails.application.routes.draw do
  match '*all' => 'application#cor', :constraints => {:method => 'OPTIONS'}, :via  => [:get, :post]
  root 'todos#index'
  resources :todos
end
