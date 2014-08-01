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

  # it "creates two variables last name and first name for the contact." do
  # test_contact = Contact.new()
  # test_contact.set_names("last name", "first name")
  # test_contact.first.should eq ("first name")
  # test_contact.last.should eq ("last name")
  # end

  it "creates two variables last name and first name for the contact." do
  test_contact = Contact.new()
  test_contact.first = ("first name")
  test_contact.last = ("last name")
  test_contact.first.should eq ("first name")
  test_contact.last.should eq ("last name")
  end
end

describe Phonenumber do
  it "initalizes the phone class." do
    test_phone = Phonenumber.new("5556667777")
    test_phone.should be_an_instance_of Phonenumber
  end

  it "returns a type of phone from the number." do
    test_phone = Phonenumber.new("5556667777")
    test_phone.type = "mobile"
    test_phone.type.should eq ("mobile")
  end


end
