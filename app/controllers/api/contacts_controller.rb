class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jb"
  end

  def one_contact_action
    @contact = Contact.first
    render "one_contact.json.jb"
  end
end
