class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
    render("index.html.erb")
  end

  def show
    @photoid=params[:id]
    @photoshow= Photo.find(@photoid)
      render("show.html.erb")
  end

  def newform
    render("newphoto.html.erb")
  end

def newphoto
  p = Photo.new
      p.caption =params[:the_caption]
          p.source =params[:the_source]
                p.save
              @list_of_photos=Photo.all
                render("index.html.erb")
end

  def destroy
    @photoid=params[:id]
    @photodel = Photo.find(@photoid)
    @photodel.destroy
    @list_of_photos=Photo.all
      render("index.html.erb")
      end


      def edit_form
        @photoidedit=params[:id]
        @photoedit = Photo.find(@photoidedit)
        render("editphoto.html.erb")
      end


      def update_row
        @photoidedited=params[:id]
        @photoedit1 = Photo.find(@photoidedited)
        @photoedit1.caption = params[:the_caption]
            @photoedit1.source = params[:the_source]
                  @photoedit1.save
                  @photoshow= Photo.find(@photoidedited)
                    render("show.html.erb")
      end
end
