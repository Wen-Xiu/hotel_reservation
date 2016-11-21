require_relative '../spec_helper'
describe InputParser do
  let(:input){InputParser.new}
  let(:input_get_from_console){"Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)"}
  let(:expect_user_input){{'customer type' => 'rewards', 'dates' => ['Thu','Fri','Sat']}}
  it 'should get customer type and dates from user input' do
    expect(input.input_parser(input_get_from_console)).to eq(expect_user_input)
  end
end