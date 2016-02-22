class ContactManager

	def initialize(name, number)
		require 'rubygems'
		require 'sqlite3'
		@db=SQLite3::Database.new("contacts.db")
		@db.execute("CREATE TABLE IF NOT EXISTS contacts_data (contact_idx INTEGER AUTOINCREMENT, contact_name TEXT NOT NULL, contact_phoneNumber CHAR(50))")
		@db.execute("CREATE TABLE IF NOT EXISTS contacts_message_data (message_idx INTEGER AUTOINCREMENT, contact_idx INT NOT NULL, message TEXT NOT NULL)")
	end

	def addNewUser(name, phoneNUmber)
		if name.length>0 && phoneNUmber.length>0
			@db.execute("INSERT INTO contacts_data (contact_name, contact_phoneNumber) VALUES('#{name}', '#{phoneNUmber}')")
		else
			false
		end

	end

	def searchUser(name)
		if name.length>0
			@db.execute("SELECT * FROM contact_name LIKE %'#{name}'%")
		else
			false
		end
	end

	def displaySearchResult(listedNumber)
		returnValue=""
		if listedNumber.length>0
			returnValue="Your search result has produced #{listedNumber.length} results"
		else
			false
		end
	end

end

nas=ContactManager.new()
nas.searchUser()