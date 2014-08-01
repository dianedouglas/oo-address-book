class Contact
  def initialize
    @first = ""
    @last = ""
  end

  def set_names(last, first)
    @first = first
    @last = last
  end

  def first
    @first
  end

  def last
    @last
  end
end
