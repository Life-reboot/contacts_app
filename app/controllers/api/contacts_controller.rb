class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render "one_contact.json.jb"
  end
end
