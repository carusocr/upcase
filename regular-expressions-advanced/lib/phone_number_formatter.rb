class PhoneNumberFormatter
  def initialize(number)
    @number = number
  end

  def format_number
    @number.sub(/.*(\d{3}).*(\d{3}).*(\d{4}).*/,'(\1) \2-\3')
  end
end
