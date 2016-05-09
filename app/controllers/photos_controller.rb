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

  def create_row
    g=Photo.new
    g.caption=params[:the_caption]
    g.source=params[:the_source]
    g.save
    redirect_to("http://localhost:3000/photos")
    # render ("create_photo.html.erb")
    # change to create_photo.html.erb
    # @test = Photo.find_by({ :caption => params[:photo_caption]})
  end

  def destroy
    d=Photo.find_by({ :id => params[:id]})
    d.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit
    @photo = Photo.find_by({ :id => params[:id]})
  # @editimage = Photo.find_by({ :id => params[:id]})
  # render ("edit_form.html.erb")
  end

def test
  render ("test.html.erb")
end

def update_row
  p = Photo.find_by({ :id => params[:id] })
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save
    redirect_to("/photos")
end

end
