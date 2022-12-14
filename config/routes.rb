Rails.application.routes.draw do
  resources :universities
  devise_for :businesses
  
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "students", to: "devise/sessions#new"

    get "businesses", to: "devise/sessions#new"
  end
  
  devise_for :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
