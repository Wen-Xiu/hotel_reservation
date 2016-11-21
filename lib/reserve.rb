require './lib/lakewood'
require './lib/bridge'
require './lib/ridge'
class Reserve
  def initialize
    @lakewood = Lakewood.new
    @bridgewood = Bridgewood.new
    @ridgewood = Ridgewood.new
    @hotel_names = %w[lakewood bridgewood ridgewood]
  end

  def cheapest_hotel_with_highest_rate(customer_type, dates)
    cheapest_hotel_from hotel_list_ordered_by_rate, customer_type, dates
  end

  private
  def calculate_total_price_for(hotel_name, customer_type, dates)
    dates.inject(0){|price, date|price + instance_variable_get("@#{hotel_name}").daily_price_for(customer_type,date)}
  end

  def cheapest_hotel_from(hotel_names, customer_type, dates)
    hotel_names.inject()  do |cheapest_hotel, hotel|
      calculate_total_price_for(cheapest_hotel, customer_type, dates) > calculate_total_price_for(hotel, customer_type, dates) ? hotel : cheapest_hotel
    end
  end

  def hotel_list_ordered_by_rate
    @hotel_names.sort{|a|instance_variable_get("@#{a}").hotel_rate}
  end

end