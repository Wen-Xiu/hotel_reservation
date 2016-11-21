require 'yaml'
class HotelInfoParser
  def initialize
    @path = YAML.load_file('./config/hotel_info_config.yml')
  end

  def hotel_info_parser_for(hotel_type)
    @path[hotel_type]
  end

  def method_missing(method_name,hotel_type)
    method_name.to_s.match("#{hotel_type}_info_parser") ?  @path[hotel_type] : super
  end
end