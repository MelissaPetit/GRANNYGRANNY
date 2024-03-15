class PhotosController < ApplicationController
  def create
    uploaded_file = params[:file]
    cloudinary_response = Cloudinary::Uploader.upload(uploaded_file)
    Photo.create(image_url: cloudinary_response['secure_url'])
    redirect_to photos_path, notice: 'Photo uploaded successfully.'
  end
end
