class Api::ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      render "index.json.jb"
    else
      render json: []
    end
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      bio: params[:bio],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: current_user.id,
    )
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @contact = current_user.contacts.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @contact = current_user.contacts.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.bio = params[:bio] || @contact.bio
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    contact = current_user.contacts.find_by(id: params[:id])
    contact.destroy
    render json: { message: "Contact destroyed successfully!" }
  end
end
