Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })
  get("/photos/:id",  { :controller => "photos", :action => "show" })
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/photos/delete_photo/:id", { :controller => "photos", :action => "delete" })
  get("/photos/create_photo",{ :controller => "photos", :action => "create" })
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/photos/update_photo/:id", { :controller => "photos", :action => "update" })

# might need to go back and check these Routes

end
