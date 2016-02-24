# this class help the cli
class CommandHelper < ContactManager
	def check_add_format(command_array)
		if command_array[1] != '-u' || command_array[3] != '-p'
			puts 'Invalid command use -u <name> -p <number>'
			main_menu_command
		elsif !command_array[4].is_num_str?
			puts 'Phone number not a valid number use -u <name> -p <number>'
			main_menu_command
		else
			puts 'weldone boy'
		end
	end

	def main_menu_command
		command_array=gets.chomp
		if command_array?include("'")
			command_array.split("'")
		else
			command_array.split(" ")
		end

		print command_array
		if command_array[0].downcase == 'add'
			if command_array.length==5
				check_add_format(command_array)
			else
				puts 'Invalid command press -h for help or -e to exist'
				main_menu_command
			end
		elsif command_array[0].downcase == 'search'

		elsif command_array[0].downcase == 'text'

		else
			puts 'Invalid command press -h for help or -e to exist'
			main_menu_command
		end

	end

end