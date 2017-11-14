class FailedsController < ApplicationController
  before_action :set_contact
  before_action :set_contact_failed, only: [:show, :update, :destroy]

  def index
    json_response(@contact.faileds)
  end

  def show
    json_response(@failed)
  end

  def create
    @contact.faileds.create!(failed_params)
    json_response(@contact, :created)
  end

  def update
    @failed.update(failed_params)
    head :no_content
  end

  def destroy
    @failed.destroy
    head :no_content
  end

  private
    def failed_params
      params.permit(:text, :post_rating)
    end

    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def set_contact_failed
      @failed = @contact.faileds.find_by!(id: params[:id]) if @contact
    end
end
