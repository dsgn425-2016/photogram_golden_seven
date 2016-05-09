Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

# Routes to CREATE photos

get("/create_row", {:controller=> "photos", :action => "new_row"})
get("/photos/new", {:controller=> "photos", :action => "new_form"})


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

#routes to DELETE photos
get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

#routes to EDIT photos

get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

end
