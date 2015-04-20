Rails.application.routes.draw do
  
  root 'pages#home'     
  
  get '/home', to: 'pages#home'  
  
  # The old way to create routes         
  #get '/recipes', to: 'recipes#index'     
  
  #get '/recipes/new', to: 'recipes#new', as: 'new_recipe'     # Render the form     
  
  #post '/recipes', to: 'recipes#create'    
  
  #get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'     
  
  #patch '/recipes/:id', to: 'recipes#update'      # Handle the form submission      
  
  #get '/recipes/:id', to: 'recipes#show', as: 'recipe'           
  
  #delete '/recipes/:id', to: 'recipes#destroy'     
  
  resources :recipes     # Creates all routes!      
  
end
