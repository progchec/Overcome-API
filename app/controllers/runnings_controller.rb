class RunningsController < ApplicationController
  before_action :set_contact
  before_action :set_contact_running, only: [:show, :update, :destroy]

  def index
    json_response(@contact.runnings)
  end

  def show
    json_response(@running)
  end

  def create
    @contact.runnings.create!(running_params)
    json_response(@contact, :created)
  end

  def update
    @running.update(running_params)
    head :no_content
  end

  def destroy
    @running.destroy
    head :no_content
  end

  private
    def running_params
      params.permit(:text)
    end

    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def set_contact_running
      @running = @contact.runnings.find_by!(id: params[:id]) if @contact
    end
end
