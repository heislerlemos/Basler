class ContactsController < ApplicationController
 
 def new
 	@contact = Contact.new
 end

 def create
    @contact = Contact.new(params[:contact])
 	@contact.request = request
 	if @contact.deliver
 		redirect_to  root_path, success: "Obrigado por enviar a mensagem. Entraremos em contacto consigo em breve"
 		puts "it sended"
 	else 
 		render :new, danger: "Não foi possivel enviar a mensagem."
 		puts "it did not sended"
 	end
 end
end
