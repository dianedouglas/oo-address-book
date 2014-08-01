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
end

describe Phonenumber do
  it "initalizes the phone class." do
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
