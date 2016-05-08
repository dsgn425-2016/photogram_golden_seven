Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",     { :controller => "photos", :action => "index" })
  get("/photos/:id",  { :controller => "photos", :action => "show" })
  get("/photos",     { :controller => "photos", :action => "index" })
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/photos/delete_photo/:id", { :controller => "photos", :action => "delete" })
  get("/photos/create_photo",{ :controller => "photos", :action => "create" })
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/photos/update_photo/:id", { :controller => "photos", :action => "update" })
  get("/photos/:id",{ :controller => "photos", :action => "show" })


end
