Rails.application.routes.draw do
  root to: "main#index"
  get '/index', to: 'main#index'

  get '/about', to: 'main#about'

  get '/sales', to: 'main#sales'

  get '/contact', to: 'main#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
