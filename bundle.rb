require 'ruble'

bundle 'Kohana Snippets' do |bundle|
	bundle.author = 'Andrés Villagrán'
	bundle.display_name = "Kohana"
	
	bundle.menu 'Kohana' do |main_menu|
	  main_menu.menu 'Controllers' do |submenu|
	    submenu.command 'controller'
	    submenu.command 'action'
    end		
		main_menu.command 'model'
	end
end
