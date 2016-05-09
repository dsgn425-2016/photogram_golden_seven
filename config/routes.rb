Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  get("/photos/new",       { :controller => "photos", :action => "new_form" })
 get("create_photo",       { :controller => "photos", :action => "create_row" })

  # Routes to READ photos and determine actions
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  get("/delete_photo/:id",       { :controller => "photos", :action => "delete" })
get("/photos/:id/edit",       { :controller => "photos", :action => "edit_form" })
get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

end
