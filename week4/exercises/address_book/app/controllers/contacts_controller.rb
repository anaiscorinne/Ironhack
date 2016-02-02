class ContactsController < ApplicationController
  def index
		@contact = Contact.all.order('name ASC')
		render "index"
	end

	def new
		render "new"
	end

	def create
    render(:text => "This route is contacts#create.")
  end

  def create
    name = params[:contact][:name]
    address = params[:contact][:address]
    phone = params[:contact][:phone_number]
    email = params[:contact][:email_address]
    if Contact.validate(name, address, phone, email)
      contact = Contact.new(
        :name => params[:contact][:name],
        :address => params[:contact][:address],
        :phone_number => params[:contact][:phone_number],
        :email_address => params[:contact][:email_address])

      # Now we save the contact
      contact.save

      # render(:text => contact.attributes)
      redirect_to("/contacts")
    else
      render("incorrect_details")
    end
  end

  def show
    id = params[:id]
    @contact = Contact.find_by(id: id)
  end

  def make_favorite
    id = params[:id]
    contact = Contact.find_by(id: id)
    contact.status = true
    contact.save
    redirect_to("/")
  end

  def favorite_contacts
    @contact = Contact.all.order('name ASC')
    render("favorite_contacts")
  end

  def search
    letter = params[:letter]
    @contacts = Contact.where('substr(name, 1, 1) = ?', letter)
    render("search")
  end


end
