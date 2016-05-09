class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find(params[:id])
    @list_of_photos = Photo.where(:id => (p))
  end

def new_form

end

def create_row

redirect_to("http://localhost:3000/photos")
end
def destroy
end

def edit_form
end

def update_row
end

end
