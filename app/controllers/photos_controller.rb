class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all

  end

  def show
    @bigimage = Photo.find_by({ :id => params[:id]})
    render ("show.html.erb")
  end

  def new_form
      render ("new.html.erb")
  end

end
