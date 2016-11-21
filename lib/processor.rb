require_relative '../env'
class Processor
  # def initialize
  #   @console_interaction = ConsoleInteraction.new
  #   @input_parser = InputParser.new
  #   @reserve = Reserve.new
  # end

  def self.process
    @console_interaction = ConsoleInteraction.new
    @input_parser = InputParser.new
    @reserve = Reserve.new
    begin
      @console_interaction.ask_user_to_input do |input_line|
        @console_interaction.quit_system input_line
        reserve_info = @input_parser.input_parser(input_line)
        cheapest_hotel = @reserve.cheapest_hotel_with_highest_rate reserve_info['customer type'], reserve_info['dates']
        @console_interaction.output_the_cheapest_hotel cheapest_hotel
      end
    rescue Exception => e
       Processor.process
    end


  end

end