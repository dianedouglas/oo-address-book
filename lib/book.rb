class Book

  def initialize
    @contacts = []
  end

  def add_contact(contact)
    @contacts << contact
  end

  def contacts
    @contacts
  end

  def delete_contact(contact)
    @contacts.delete(contact)
  end

end
