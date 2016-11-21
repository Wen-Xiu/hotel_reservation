require_relative '../spec_helper'

describe Hotel do
  let(:weekend_price_for_regular_customer){150}
  let(:weekday_price_for_regular_customer){220}
  let(:weekend_price_for_rewards_customer){40}
  let(:weekday_price_for_rewards_customer){100}
  let(:ridgewood){Ridgewood.new }
  it 'should get ridgewood weekend daily price for regular customer' do
    expect(ridgewood.daily_price_for 'regular', 'Sat').to eq(weekend_price_for_regular_customer)
    expect(ridgewood.hotel_type).to eq('ridgewood')
  end

  it 'should get ridgewood weekday daily price for regular customer' do
    expect(ridgewood.daily_price_for 'regular', 'Fri').to eq(weekday_price_for_regular_customer)
  end

  it 'should get ridgewood weekday daily price for rewards customer' do
    expect(ridgewood.daily_price_for 'rewards', 'Thu').to eq(weekday_price_for_rewards_customer)
  end

  it 'should get ridgewood weekday daily price for rewards customer' do
    expect(ridgewood.daily_price_for 'rewards', 'Sun').to eq(weekend_price_for_rewards_customer)
  end

  it 'should get ridgewood weekday daily price for rewards customer' do
    expect(ridgewood.hotel_rate).to eq(5)
  end
end