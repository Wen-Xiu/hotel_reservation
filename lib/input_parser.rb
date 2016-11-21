class InputParser

  def input_parser(input)
    user_input = Hash.new
    user_input.merge!("customer type" => customer_type_from(input))
    user_input.merge!("dates" => dates_in_a_week_from(input))
  end


  private
  def verify_input input
    /(Rewards|Regular):\s(([0-3][0-9]\w{3,4}\d{4}.{5,6})(,\s|$)){1,100}/i.match(input)
  end

  def customer_type_from(input)
    input.split(':')[0].downcase!
  end

  def dates_in_a_week_from(input)
    dates = input.split(':')[1].split(',')
    dates.collect!{|date|/([0-3][0-9])(\w{3,4})(\d{4}).{5,6}/.match(date){Time.local($3,$2,$1).strftime("%a")}}
  end



#   # ToDO: add verify to date input in console input class
end