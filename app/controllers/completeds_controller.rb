class CompletedsController < ApplicationController
  before_action :set_contact
  before_action :set_contact_completed, only: [:show, :update, :destroy]

  def index
    json_response(@contact.completeds)
  end

  def show
    json_response(@completed)
  end

  def create
    @contact.completeds.create!(completed_params)
    json_response(@contact, :created)
  end

  def update
    @completed.update(completed_params)
    head :no_content
  end

  def destroy
    @completed.destroy
    head :no_content
  end

  private
    def completed_params
      params.permit(:text, :proof_image, :post_rating)
    end

    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def set_contact_completed
      @completed = @contact.completeds.find_by!(id: params[:id]) if @contact
    end
end
