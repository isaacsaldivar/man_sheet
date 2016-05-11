def main_menu
	puts "cheatsheet"
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	print "Which number option would you like?"
	@user_input = gets.to_i
	user_options
end

def user_options
	if @user_input == 1
		puts "1. mv, 2. ls, 3. cp, 4. mdir, 5. rm 6. Main Menu"
		choice = gets.to_i
		case choice
		when 1 
			puts `man mv`
		when 2
			puts `man ls`
		when 3
			puts `man cp`
		when 4 
			puts `man mkdir`
		when 5
			puts `man rm`
		when 6
			main_menu						
		end
	
	main_menu
	elsif @user_input == 2
		puts "Search"
		search_value = gets.strip
		puts `man #{search_value}`
		main_menu
	else @user_input == 3
		exit
	end
	
end

main_menu









