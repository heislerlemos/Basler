class ContactsController < ApplicationController
 
 def new
 	@contact = Contact.new
 end

 def create
 	@contact = Contact.new
 	@contact.request = request
 	if @contact.deliver
 		flash.now[:notice] = "Obrigado por enviar a mensagem. Entraremos em contacto consigo em breve"
 		puts "it sended"
 	else 
 		flash.now[:erro] = "Não foi possivel enviar a mensagem."
 		render :new
 		puts "it did not sended"
 	end
 end
end
