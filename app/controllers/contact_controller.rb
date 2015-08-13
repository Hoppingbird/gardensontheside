class ContactController < ApplicationController
  def contact
    @contact = Contact.all
  end
end
