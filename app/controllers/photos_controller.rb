class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

  end

end
