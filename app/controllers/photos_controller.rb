class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
    # @photo_source = @photo.source
    # @photo_caption = @photo.caption
    # @photo_id = @photo.id
  end

end
