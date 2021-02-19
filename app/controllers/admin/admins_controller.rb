module Admin
class AdminsController < ApplicationController

  def index
   
  end

  def show
    @admins = Admin.all
  end
end

end
