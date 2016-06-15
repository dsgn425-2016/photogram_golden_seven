class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
p = Photo.find_by({:id => params[:id]})
@photo_caption = p.source
@photo_source = p.caption
@photo_id = p.id
@photo_id = p.id

end

def new_form
end

def create_row
  p = Photo.new
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save

end

end
