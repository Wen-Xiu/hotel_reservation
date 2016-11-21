require_relative 'hotel_info_parser'
class Hotel
  attr_accessor :hotel_type

  def daily_price_for(customer_type, date)
   unit_price_for customer_type, day_type_of(date)
  end

  def hotel_rate()
    hotel_info["rate"]
  end

private
  def hotel_info
    hotel_info_parser = HotelInfoParser.new
    hotel_info_parser.send("#{hotel_type}_info_parser".intern, hotel_type)
  end

  def unit_price_for  customer_type, weekend_or_weekday
    hotel_info[customer_type][weekend_or_weekday]
  end

  def day_type_of(date)
    date =~ /sat$|sun$/i ? 'weekend' : 'weekday'
  end
end