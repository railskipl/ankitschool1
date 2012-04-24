class ContactMailer < ActionMailer::Base
 default :from => "ankit.kipl@gmail.com"

def registrations_confirmation(contact)
      @contact = contact
      mail(:to =>  "ankit.kipl@gmail.com", :subject => contact.subject )
  end
end