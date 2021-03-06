class ImagesController < ApplicationController
  def new
  	@image = Image.new
  end

  def create
  	@image = Image.new image_params
  	if @image.save
  		redirect_to images_path
  	else
  		render 'new'
  	end
  end

  def index
  	@images = Image.all
  end

  def show
  	@image = Image.find(params[:id])
  end

  private

  def image_params
  	params.require(:image).permit(:title, :avatar)
  end
end
