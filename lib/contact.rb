require './lib/email.rb'
require './lib/phonenumber.rb'
require './lib/address.rb'

class Contact

  attr_accessor :first, :last

  def initialize
    @phones = []
    @emails = []
    @addressi = []
  end

  def add_phone(phone)
    @phones << phone
  end

  def phones
    @phones
  end

  def add_email(email)
    @emails << email
  end

  def emails
    @emails
  end

  def add_address(address)
    @addressi << address
  end

  def addressi
    @addressi
  end

  def delete_email_phone_or_address(info)
    if(info.class == Email)
      @emails.delete(info)
    elsif(info.class == Phonenumber)
      @phones.delete(info)
    elsif(info.class == Address)
      @addressi.delete(info)
    end
  end
end
