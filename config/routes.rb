Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # module the controllers without affecting the URI
  

  scope module: :v1, constraints: ApiVersion.new('v1') do
    resources :todos do
      resources :items
    end
    resources :articles, only: :index
  end

  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
    resources :articles, only: :index
  end


  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
