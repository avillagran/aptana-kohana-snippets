require 'ruble'

bundle 'Kohana Snippets' do |bundle|
	bundle.author = 'Andrés Villagrán'
	bundle.display_name = "Kohana"
	
	bundle.menu 'Kohana' do |main_menu|
    
    main_menu.command 'controller'		
		main_menu.command 'model'
		main_menu.menu 'Routes' do |s|
		  s.command 'Route with directory'
		  s.command 'Route'
		end
		
		main_menu.menu 'Kohana Rails' do |submenu|
		  submenu.command 'Kohana Rails Controller Action'
      submenu.command 'Kohana Rails Controller Get - Set View' 
		end
		
	end
end
