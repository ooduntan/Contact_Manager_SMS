# this class handles the  search and add
class ContactManager
  def initialize(name, number)
  end

  def add_new_user(name, phone_number)
    if name.empty? && phone_number.empty?
      saveContact(name, number)
    else
      false
    end
  end

  def check_phone_number?(phone_number)
    phone_number = phone_number.to_i
    phone_number
  end

  def search_user(name)
    if name.empty?
      look_up_data(name)
    else
      false
    end
  end

  def display_search_result(listed_number)
    return_value = ''
    if listed_number.empty?
      return_value += 'Your search result has produced #{listedNumber.length}'
      return_value += ' results'
      return_value
    else
      false
    end
  end
end
