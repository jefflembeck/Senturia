Emilarr::Application.routes.draw do
  
  get "/operas/new" => 'operas#new'
  post '/operas' => 'operas#create', as: :operas
  get "operas/:id/edit" => 'operas#edit'
  patch '/operas/:id' => 'operas#update', as: :opera
  delete 'operas/:id' => 'operas#delete'

  get "public/resume.pdf" => "application#serve"
  get "/calendar" => "welcome#calendar"
  get "/analytics" => "analytics#home"
  get "/new_performance" => "analytics#new_performance"
  post "/new_performance" => "analytics#create_performance"

  get "/edit_bio" => "analytics#edit_bio"
  post "/edit_bio" => "analytics#update_bio"

  # get "/update_rep" => "analytics#add_rep", as: :opera
 
  root 'welcome#home'


end
