class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
      @photo = Photo.find(params[:id])
  end

  def newform

  end

def newphoto
  @photo = Photo.new
      @photo.caption =params[:the_caption]
          @photo.source =params[:the_source]
                @photo.save
                @list_of_photos = Photo.all
                render("index")
end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    @list_of_photos = Photo.all
    render("index")
        end


      def edit_form
        @photoedit = Photo.find(params[:id])

      end


      def update_row
        @photo = Photo.find(params[:id])
        @photo.caption = params[:the_caption]
            @photo.source = params[:the_source]
                  @photo.save
                  render("show")
      end
end
