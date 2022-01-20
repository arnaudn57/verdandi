class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photos = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo = @photo.update(photo_params)
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:url, photo: [])
  end
end
