class HomeController < ApplicationController
  def index
  end
  
    
  def contact
    if request.post? and params[:reset_password]
            if contact = Contact.new(params[:reset_password])

              contact.name = "#{params[:reset_password][:name]}"
              contact.email = "#{params[:reset_password][:email]}"
              contact.subject = "#{params[:reset_password][:subject]}"
              contact.message = "#{params[:reset_password][:message]}"
              if contact.save
              
              ContactMailer.registrations_confirmation(contact).deliver
              redirect_to "/contacts",:notice => "We will reach you shortly.."
              end
            end
         else
           @title = "contacts"
         end
    
    end
    

end
