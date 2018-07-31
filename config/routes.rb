Rails.application.routes.draw do
  #acceuil
  get '/', to: 'users#accueil'
  #forms 1
  get '/form1', to: 'users#new'
  post '/form1', to: 'users#create'
  #forms 2
  get '/form2', to: 'users#new2'
  post '/form2', to: 'users#create'
  #forms 3
  get '/form3', to: 'users#new3'
  post '/form3', to: 'users#createBis'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
