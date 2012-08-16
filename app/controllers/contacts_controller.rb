class ContactsController < ApplicationController

  def create
    contact_request = ContactRequest.new(params[:contact_request])
    if contact_request.valid? && !contact_request.spam?
      Mailer.contact_request(contact_request).deliver
    end
  end

  def show
    @contact_request = ContactRequest.new
  end
end
