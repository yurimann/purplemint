class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @image = Image.find(params[:id])
  end
  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @event, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @image = Image.find(params[:id])
    @image.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Image was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  def image_params
    params.require(:image).permit(:name, :image)
  end
end
