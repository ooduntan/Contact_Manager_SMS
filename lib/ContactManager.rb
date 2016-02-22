class ContactManager

	def initialize()
		require 'rubygems'
		require 'sqlite3'
		@db=SQLite3::Database.new("contacts.db")
	end

	def addNewUser(name, phoneNUmber)

	end

	def searchUser()
		puts @db
	end

end

nas=ContactManager.new()
nas.searchUser()