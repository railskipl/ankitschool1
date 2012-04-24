class ContactsController < ApplicationController
  
  def index
      @contacts = Contact.find(:all)
    end

    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(params[:contact])
      respond_to do |format|
    if @contact.save
      format.html { redirect_to(@contact, :notice => 'contacts was successfully created.') }
      format.xml { render :xml => @contact, :status => :created, :location => @contact }
    else
      format.html { render :action => "new" }
      format.xml { render :xml => @contact.errors, :status => :unprocessable_entity }
    end
  end
  end
end
