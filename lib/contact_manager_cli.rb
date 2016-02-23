require_relative 'contact_manager'
user_data=DataManager.look_up_user
if user_data.length<=0

	puts 'Hello! We need your name'
	name = gets.chomp
	puts "and your Phone Number"
	phone_number = gets.chomp
	purified_phone_number=ContactManager.purify_number(phone_number)
	contact_manager_obj = ContactManager.new(name,purified_phone_number)
	puts "Welcome #{name} for help type -help and press the enter key"
else
	puts 'Welcome back '+user_data[0][0]+' for help type -help and press the enter key'
	contact_manager_obj = ContactManager.new()
end
command=gets.chomp.split()
print command
if command[0].downcase == 'add'
	if command[2].is_a?(NilClass) || command[4].is_a?(NilClass)
		puts 'i catch you'
	elsif command[1].is_a?(NilClass) || command[1] != '-u'

	elsif command[3].is_a?(NilClass) || command[3] != '-p'

	else

	end
elsif command[0].downcase == 'search'

elsif command[0].downcase == 'text'

else

end

