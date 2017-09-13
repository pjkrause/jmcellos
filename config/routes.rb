Rails.application.routes.draw do
  root to: "main#index"
  get '/index', to: 'main#index'

  get '/about', to: 'main#about'

  get '/sales', to: 'main#sales'

  get '/cello1', to: 'main#cello1'
  get '/cello2', to: 'main#cello2'
  get '/cello3', to: 'main#cello3'

  get '/contact', to: 'main#contact', as: 'contact'
  post '/contact', to: 'main#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
