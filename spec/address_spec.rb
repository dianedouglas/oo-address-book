require "rspec"
require "book"
require "contact"
require "address"
require "email"
require "phonenumber"

describe Contact do
  it "initalizes the contact class." do
    test_contact = Contact.new()
    test_contact.should be_an_instance_of Contact
  end

  it "creates two variables last name and first name for the contact." do
    test_contact = Contact.new()
    test_contact.first = ("first name")
    test_contact.last = ("last name")
    test_contact.first.should eq ("first name")
    test_contact.last.should eq ("last name")
  end

  it "adds phone numbers to the contact." do
    test_contact = Contact.new()
    test_phone = Phonenumber.new("5556667777")
    test_contact.add_phone(test_phone)
    test_contact.phones.should eq [test_phone]
  end

  it "adds an email address to the contact" do
    test_contact = Contact.new()
    test_email = Email.new("alpaca@gmail.com")
    test_contact.add_email(test_email)
    test_contact.emails.should eq [test_email]
  end

  it "adds an physical address to the contact" do
    test_contact = Contact.new()
    test_address = Address.new()
    test_contact.add_address(test_address)
    test_contact.addressi.should eq [test_address]
  end
end

describe Address do
  it "initializes the address class." do
    test_address = Address.new()
    test_address.should be_an_instance_of Address
  end

  it "returns or sets the house number, street, city, state and zip." do
    test_address = Address.new()
    test_address.house_number = 1234
    test_address.house_number.should eq 1234
    test_address.street = "Main st."
    test_address.street.should eq "Main st."
    test_address.city = "Portland"
    test_address.city.should eq "Portland"
    test_address.state = "OR"
    test_address.state.should eq "OR"
    test_address.zip = 97209
    test_address.zip.should eq 97209
  end

end

describe Phonenumber do
  it "initializes the phone class." do
    test_phone = Phonenumber.new("5556667777")
    test_phone.should be_an_instance_of Phonenumber
  end

  it "returns/sets a type of phone from the number." do
    test_phone = Phonenumber.new("5556667777")
    test_phone.type = "mobile"
    test_phone.type.should eq ("mobile")
  end
end

describe Email do
  it "initalizes the email class." do
    test_email = Email.new("ilovepuppies@gmail.com")
    test_email.should be_an_instance_of Email
  end

  it "sets the email to a different address." do
    test_email = Email.new("ilovepuppies@gmail.com")
    test_email.email = "ilovepuppies@yahoo.com"
    test_email.email.should eq "ilovepuppies@yahoo.com"
  end

  it "returns/sets a type for email." do
    test_email = Email.new("ilovepuppies@gmail.com")
    test_email.type = "work"
    test_email.type.should eq ("work")
  end
end

describe Book do
  it "initializes an empty address book" do
    test_book = Book.new()
    test_book.should be_an_instance_of Book
  end
end
