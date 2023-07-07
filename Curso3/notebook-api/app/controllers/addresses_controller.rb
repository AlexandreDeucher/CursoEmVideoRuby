class AddressesController < ApplicationController
  before_action :set_address

  def show
    render json: @contact.address
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @contact = Contact.find(params[:contact_id])
  end
end