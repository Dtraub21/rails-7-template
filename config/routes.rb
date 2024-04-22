Rails.application.routes.draw do
  # Routes for the Social resource:

  # CREATE
  post("/insert_social", { :controller => "socials", :action => "create" })
          
  # READ
  get("/socials", { :controller => "socials", :action => "index" })
  
  get("/socials/:path_id", { :controller => "socials", :action => "show" })
  
  # UPDATE
  
  post("/modify_social/:path_id", { :controller => "socials", :action => "update" })
  
  # DELETE
  get("/delete_social/:path_id", { :controller => "socials", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
