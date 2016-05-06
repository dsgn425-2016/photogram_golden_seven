Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

# Routes to CREATE photos
get("photos/new", { :controller => "photos", :action => "new_form"})
get("photos/create_photo", { :controller => "photos", :action => "create_row"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  #Routes to UPDATE photos
get("/photos/:id/edit",  { :controller => "photos", :action => "edit_form" })
get("/photos/update_photo/:id",  { :controller => "photos", :action => "update" })

#Routes to DELETE photos
get("/photos/delete_photo/:id", { :controller => "photos", :action => "delete"})

end
