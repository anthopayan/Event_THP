module Admin
  
class AdminEventsController < ApplicationController

  def show
    
  end

  def index
    @event_index = Event.all
  end
  
end
end