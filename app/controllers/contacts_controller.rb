class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  def index
    @contacts = Contact.all
    json_response(@contacts)
  end

  def create
    @contact = Contact.create!(contact_params)
    json_response(@contact, :created)
  end

  def show
    contact = Contact.find_by(id: params[:id])
    json_response(contact)
  end

  def avatar
    contact = Contact.find_by(id: params[:id])
    contact = contact.avatar.url(:medium)
    json_response(contact)
  end

  def find_by_login
    json_response(Contact.find_by(login: params[:login]))
  end

  def find_by_phone
    json_response(Contact.find_by(phone: params[:phone]))
  end

  def find_out_id
    contact = Contact.find_by(login: params[:login])
    json_response(contact.id)
  end

  def find_password_by_login
    json_response(Contact.find_by(login: params[:login]))
  end

  def update
    @contact.update(contact_params)
    head :no_content
  end

  def destroy
    @contact.destroy
    head :no_content
  end

  private
    def contact_params
      params.permit(:name, :surname, :login, :password,
        :phone, :avatar, :rating, :virginity)
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end
end
