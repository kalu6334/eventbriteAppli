class UserMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
 
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def event_subscription(event_admin, event, user)
        @event_admin = event_admin
        @event = event
        @user = user 
        mail(to: @event_admin.email, subject: 'Un participant a votre evenement ') 
    end
end
