class ParticipationsController < ApplicationController
  def new
    @stripe_amount = Event.find(params[:event_id]).price * 100

  end

  def create
    @stripe_amount = Event.find(params[:event_id]).price * 100

  customer = Stripe::Customer.create({
  email: params[:stripeEmail],
  source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
  customer: customer.id,
  amount: @stripe_amount,
  description: "Stripe customer",
  currency: 'usd',
  })

  @new_participation = Participation.new
  @new_participation.user_id = current_user.id
  @new_participation.event_id = Event.find(params['event_id']).id
  @new_participation.stripe_customer_id = charge.customer

  if @new_participation.save
    redirect_to event_path(id: params['event_id'])
    flash.notice = "Participation bien enregistré"

  else
    redirect_to new_event_participation_path(params[:event_id])
      flash.alert = "La participation n'est pas correctement renseigné !"

  end
  
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_event_participations_path
  end
# After the rescue, if the payment succeeded
end

