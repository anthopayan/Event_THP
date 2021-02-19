module Admin

class AdminUsersController < ApplicationController
  
  def index
    
  end

  def show
    @user_index = User.all
  end
  
end
end
