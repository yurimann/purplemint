class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create

      @contact = ContactForm.new(contact_form_params)
      if @contact.deliver
        flash[:notice] = "Thank you for your message"
        redirect_to root_path
      else
        flash[:error] = "Sorry this message was not delivered"
        render :new
      end

  end

  def contact_form_params
    params.permit(:first_name, :last_name, :email, :phone, :message)
  end

end
