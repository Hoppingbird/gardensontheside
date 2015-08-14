class ContactsController < ApplicationController
    def index
      @contact = Contact.all
    end


    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(params[:contacts])
      @contact.request = request
      if @contact.deliver
        flash.now[:error] = nil
        flash.now[:notice] = 'Thank you for your message!'
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    end
  end

