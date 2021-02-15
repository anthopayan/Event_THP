class ParticipationMailer < ApplicationMailer

  default from: 'no-reply@testeur.com'

  def user_participation(participation)
    @event = participation.event
    @admin = @event.admin
    
    mail(to: @admin.email, subject: 'Nouveau participant !')
  end
end
