class PhoneNumberFormatter
  def initialize(number)
    @number = number
  end

  def format_number
    intlcode = @number[/(\+\d)/]
    if intlcode
      @number.sub(/.*?(\+\d)(\d{3}).*(\d{3}).*(\d{4}).*/,'\1 (\2) \3-\4')
    else
      @number.sub(/.*(\d{3}).*(\d{3}).*(\d{4}).*/,'(\1) \2-\3')
    end
  end
end
