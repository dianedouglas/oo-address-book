class Contact
  attr_accessor :first, :last
  def initialize
    @phones = []
  end

  def add_phone(phone)
    @phones << phone
  end

  def phones
    @phones
  end
end
