class MainController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @title = "Cello Maker, London, UK"
  end

  def about
    @title = "About"
  end

  def sales
    @title = "Sales"
  end

  def contact
    @title = "Contact"
    @contact = Contact.new
  end

  def cello1
    @title = "Gore Booth Copy"
  end

  def cello2
    @title = "Fleming 1717 Copy"
  end

  def cello3
    @title = "Gore Booth Copy"
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver
      redirect_to contact_path, notice: "Your message has been sent!"

    else
      flash[:alert] = "An error occured whilst delivering this message"
      render :contact
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
