class AvatarsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @user.avatar.attach(params[:avatar])

				image = MiniMagick::Image.open(params[:avatar])
        image.path #
        image.resize "100x100"
        image.format "png"
        image.write "output.png"

       

        redirect_to(user_path(@user))
      end
end
