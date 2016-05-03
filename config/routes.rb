Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  #routes to create photos
  #process input and save row
  get("/create_photo", { :controller => "photos", :action => "create_row" })
  #display form
  get("/photos/new", { :controller => "photos", :action => "new_form" })


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  #Routes to delete
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

#Routes to edit
get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

end
