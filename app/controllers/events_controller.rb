class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
  end

  def create
    @event_newnew = Event.new(start_date: params["start_date"], duration: params["duration"], title: params["title"], description: params["description"], price: params["price"], location: params["location"], admin_id: current_user.id) 
  
    if @event_newnew.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to root_path
      flash.notice = "Evènement bien enregistré"
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      redirect_to new_event_path
      flash.alert = "L'évènement n'est pas correctement renseigné !"
    end
  end

  def update
    @event_edit = Event.find(params[:id])
    if @event_edit.update(start_date: params["start_date"], duration: params["duration"], title: params["title"], description: params["description"], price: params["price"], location: params["location"], admin_id: current_user.id) 
      redirect_to @event_edit
      flash.notice = "Event bien modifié"
    else
      render :edit
      flash.alert = "Try again, la mise à jour n'est pas complète !!!"
    end
  end

  def destroy
    @event_destroy = Event.find(params[:id])
    @event_destroy.destroy
    redirect_to root_path
    flash.notice = "Event bien effacé"
  end

end
