class DataManager

	def connectDb()
		require 'rubygems'
		require 'sqlite3'
		@db=SQLite3::Database.new("contacts.db")
		@db.execute("CREATE TABLE IF NOT EXISTS contacts_data (contact_idx INTEGER AUTOINCREMENT, contact_name TEXT NOT NULL, contact_phoneNumber CHAR(50))")
		@db.execute("CREATE TABLE IF NOT EXISTS contacts_message_data (message_idx INTEGER AUTOINCREMENT, contact_idx INT NOT NULL, message TEXT NOT NULL)")
	end

	def lookUpData(name)
		@db.execute("SELECT * FROM contact_name LIKE %'#{name}'%")
	end
	def saveContact(name, number)
		@db.execute("INSERT INTO contacts_data (contact_name, contact_phoneNumber) VALUES('#{name}', '#{phoneNUmber}')")
	end
end