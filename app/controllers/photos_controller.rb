class PhotosController < ApplicationController
  before_action :find_photo, only: [:show, :edit, :update]
  
  def index
    @photos = Photo.all
  end
  
  def show 
  end
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
   
  def find_photo
    @photo = Photo.find(params[:id])
  end
  
  
  def photo_params
    params.require(:photo).permit(:caption, :image)
  end
end
