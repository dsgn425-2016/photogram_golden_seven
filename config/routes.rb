Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  #CREATE photo
  get("/photos/new", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action => "create_row"})

  # READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # UPDATE photo
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

  # DELETE photo
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })
end
