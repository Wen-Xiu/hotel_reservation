require './spec/spec_helper'
describe HotelInfoParser do
  let(:hotel_info_parser){HotelInfoParser.new}
  let(:lakewood_price){{"regular"=>{"weekday"=>110, "weekend"=>90}, "rewards"=>{"weekday"=>80, "weekend"=>80}, "rate"=>3}}
  let(:bridgewood_price){{"regular"=>{"weekday"=>160, "weekend"=>60}, "rewards"=>{"weekday"=>110, "weekend"=>50}, "rate"=>4}}
  let(:ridgewood_price){{"regular"=>{"weekday"=>220, "weekend"=>150}, "rewards"=>{"weekday"=>100, "weekend"=>40}, "rate"=>5}}

  it 'should return lakewood hotel price information' do
    expect(hotel_info_parser.lakewood_info_parser 'lakewood').to eq(lakewood_price)
  end
  it 'should return bridgewood hotel price information' do
    expect(hotel_info_parser.bridgewood_info_parser 'bridgewood').to eq(bridgewood_price)
  end

  it 'should return ridgewood hotel price information' do
    expect(hotel_info_parser.ridgewood_info_parser 'ridgewood').to eq(ridgewood_price)
  end

  xit 'should execute origin missing_method when method name is not correct' do
    expect(hotel_info_parser.wrong_method_name 'ridgewood').to error
  end
end