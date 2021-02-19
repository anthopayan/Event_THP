module Admin
  
class AdminEventController < ApplicationController

  def show
    @event_index = Event.all
  end

  def index
  end
  
end
end