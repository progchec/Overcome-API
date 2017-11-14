class PublishedsController < ApplicationController
  before_action :set_contact
  before_action :set_contact_published, only: [:show, :update, :destroy]

  def index
    json_response(@contact.publisheds)
  end

  def show
    json_response(@published)
  end

  def create
    @contact.publisheds.create!(published_params)
    json_response(@contact, :created)
  end

  def update
    @published.update(published_params)
    head :no_content
  end

  def destroy
    @published.destroy
    head :no_content
  end

  private
    def published_params
      params.permit(:text, :img_path, :post_rating)
    end

    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def set_contact_published
      @published = @contact.publisheds.find_by!(id: params[:id]) if @contact
    end
end
