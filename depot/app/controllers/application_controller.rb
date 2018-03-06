class ApplicationController < ActionController::Base
  protect_from_forgery
  private

     def current_cart
     	puts "--1--}}}"
     	begin
     		Cart.find(session[:cart_id])
     	rescue Exception => e
     		puts "--异常--"
     		cart = Cart.create
     	session[:cart_id]=cart.id
     	puts "----"
     	puts cart
     	puts "----"
     	cart
     	end
     	
     # rescue ActiveRecord::RecordNotFound
     # 	puts "--2--}}}"
     # 	cart = Cart.create
     # 	session[:cart_id]=cart.id
     # 	puts "----"
     # 	puts cart
     # 	puts "----"
     # 	cart
     end
end
