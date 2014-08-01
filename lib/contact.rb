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
end
