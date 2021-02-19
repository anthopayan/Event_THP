module Admin
  
class AdminEventsController < ApplicationController

  def show
    @event_index = Event.all
  end

  def index
  end
  
end
end