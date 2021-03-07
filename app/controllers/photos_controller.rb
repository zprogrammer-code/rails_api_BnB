class PhotosController < ApplicationController
    def index
        @photos = Photo.all
        render json: {@photos}
    end

    def show
        @photo = Photo.find(params[:id])
        render json: {@photo}
    end


    def create
        @photo = Photo.create(photo_params)
        if @photo
            render json: {status:created,
                    photo: @photo}
        else
            render json: {message: 'unable to create photo'}
            
        end
    end

    def update
        @photo = Photo.find(params[:id])
        if @photo
            @photo.update(photo_params)
            render json: {message: 'photo successfully updated', status: updated}
        else
            render json: {message: 'unable to update photo '}
    end

    def destroy
        @photo = Photo.find(params[:id])
        if @photao
            @photo.destroy
            render json: {message: 'photo successfully destroyed', status: destroyed}
        else
            render json: {message: 'unable to delete photo' }
            
        end
    end


private

def photo_params
#Whitelisting for strng parameters
params.require(:photo).permit(:username, :password)
end

def find_photo
    @photo = Photo.find(params[:id])
end

end
