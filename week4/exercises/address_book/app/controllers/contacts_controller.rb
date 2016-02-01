class ContactsController < ApplicationController
  def index
		@contact = Contact.all
		render "index"
	end

	def new
		render "new"
	end

	def create
    render(:text => "This route is contacts#create.")
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email_address => params[:contact][:email_address])

    # Now we save the contact
    contact.save

    render(:text => contact.attributes)
  end

end
