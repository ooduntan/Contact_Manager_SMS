# this class handles all the database transaction
class DataManager
  require 'rubygems'
  require 'sqlite3'

  def connect_db
    @db = SQLite3::Database.new('contacts.db')
    prepare_contact_database
    prepare_user_database
  end

  def look_up_data(_name)
    @db.execute(%q(SELECT * FROM contact_name LIKE %'#{_name}'%))
  end

  def save_contact(name, number)
    query = 'INSERT INTO contacts_data (contact_name, contact_phoneNumber) '
    query += "VALUES('#{name}', '#{number}')"
    @db.execute(query)
  end

  def prepare_contact_database
    create_data_table = 'CREATE TABLE IF NOT EXISTS contacts_data '
    create_data_table += '(contact_idx INTEGER AUTOINCREMENT, contact_name'
    create_data_table += ' TEXT NOT NULL, contact_phoneNumber CHAR(50))'
    @db.execute(create_data_table)
  end

  def prepare_user_database
    create_data_table = 'CREATE TABLE IF NOT EXISTS contacts_message_data '
    create_data_table += '(message_idx INTEGER AUTOINCREMENT,'
    create_data_table += ' contact_idx INT NOT NULL, message TEXT NOT NULL)'
    @db.execute(create_data_table)
  end

  def quote_string(text_value)
    text_value.to_s.gsub(/\\/, '\&\&').gsub(/'/, "''")
  end
end
