module Admin

class AdminUserController < ApplicationController
  
  def index
    @user_index = User.all
  end

  def show
  end
  
end
end
