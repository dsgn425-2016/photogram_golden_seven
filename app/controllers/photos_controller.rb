class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show

  p=Photo.find_by({ :id => params[:id]})
  @photo_source=p.source
  @photo_caption=p.caption
  @photo_id=p.id

  render("show.html.erb")

end

def new_form

render("new_form.html.erb")

end

def new_row

p=Photo.new
p.caption=params[:The_Caption]
p.source=params[:The_Source]
p.save


redirect_to("http://localhost:3000/photos")

end

def destroy

p=Photo.find_by({ :id => params[:id]})
p.delete

redirect_to("http://localhost:3000/photos")

end

def edit_form
p=Photo.find_by({ :id => params[:id]})
@photo_source=p.source
@photo_caption=p.caption
@photo_id=p.id

render("edit_form.html.erb")

end

def update_row
  p=Photo.find_by({ :id => params[:id]})
  p.caption=params[:The_Caption]
  p.source=params[:The_Source]
  p.save

  redirect_to("http://localhost:3000/photos")
end


end
