class ContactMailer < ApplicationMailer
  default from: "p.krause@surrey.ac.uk"
  default to: "p.krause@surrey.ac.uk"

  def new_contact(contact)
    @contact = contact
    mail subject: "Message from #{@contact.name}"
  end

end
