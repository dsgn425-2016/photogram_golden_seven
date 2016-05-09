class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find(params[:id])
    @list_of_photos = Photo.where(:id => (p))
  end


end
