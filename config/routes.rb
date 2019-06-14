Rails.application.routes.draw do
  # Route for the home page
  match("/", { :controller => "restaurants", :action => "home", :via => "get"})
  
  # Routes for the Like resource:

  # CREATE
  match("/new_like_form", { :controller => "likes", :action => "blank_form", :via => "get" })
  match("/insert_like_record", { :controller => "likes", :action => "save_new_info", :via => "post" })

  # READ
  match("/likes", { :controller => "likes", :action => "list", :via => "get" })
  match("/likes/:id_to_display", { :controller => "likes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_like_form/:id_to_prefill", { :controller => "likes", :action => "prefilled_form", :via => "get" })
  match("/update_like_record/:id_to_modify", { :controller => "likes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_like/:id_to_remove", { :controller => "likes", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :users
  # Routes for the Meal resource:

  # CREATE
  match("/new_meal_form/:restaurant_id", { :controller => "meals", :action => "blank_form", :via => "get" })
  match("/insert_meal_record", { :controller => "meals", :action => "save_new_info", :via => "post" })

  # READ
  match("/meals", { :controller => "meals", :action => "list", :via => "get" })
  match("/meals/:id_to_display", { :controller => "meals", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_meal_form/:id_to_prefill", { :controller => "meals", :action => "prefilled_form", :via => "get" })
  match("/update_meal_record/:id_to_modify", { :controller => "meals", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_meal/:id_to_remove", { :controller => "meals", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Restaurant resource:

  # CREATE
  match("/new_restaurant_form", { :controller => "restaurants", :action => "blank_form", :via => "get" })
  match("/insert_restaurant_record", { :controller => "restaurants", :action => "save_new_info", :via => "post" })

  # READ
  match("/restaurants", { :controller => "restaurants", :action => "list", :via => "get" })
  match("/restaurants/:id_to_display", { :controller => "restaurants", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_restaurant_form/:id_to_prefill", { :controller => "restaurants", :action => "prefilled_form", :via => "get" })
  match("/update_restaurant_record/:id_to_modify", { :controller => "restaurants", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_restaurant/:id_to_remove", { :controller => "restaurants", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
