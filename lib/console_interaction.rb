class ConsoleInteraction

  def ask_user_to_input
    output_welcome_message
    # require 'pry';binding.pry
    # @rb_sysopen = IO.sysopen "/dev/tty", "w"
    # ios = IO.new(fd, "w")
    # ARGF.each do |line|
    #     ask_input_message
    #     yield line
    #   end
    while true
      ask_input_message
      line = STDIN.gets
        quit_system line
      yield line
    end
  end

  def output_welcome_message
    puts "\033[33mWelcome to Reserve System!!\033[0m"
  end

  def output_error_message
    puts "\033[41mInput wrong!\033[0m"
    ask_user_to_input
  end

  def ask_input_message
    puts "\033[32mPlease enter your reservation information, thank you!(press 'q' to quit)\033[0m"
  end

  def output_the_cheapest_hotel cheapest_hotel
    puts "\033[1mThe cheapest hotel is #{cheapest_hotel}\033[0m"
    # exit 0
  end

  def quit_system input
    exit!(0) if input.eql?("q\n")
  end
end