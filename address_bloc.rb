require_relative "controllers/menu_controller"
menu = MenuController.new
system "clear"
p "Welcome to Address Bloc"

menu.main_menu
