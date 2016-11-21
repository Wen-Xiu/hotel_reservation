require_relative '../spec_helper'

describe Hotel do
  let(:weekend_price_for_regular_customer){60}
  let(:weekday_price_for_regular_customer){160}
  let(:weekend_price_for_rewards_customer){50}
  let(:weekday_price_for_rewards_customer){110}
  let(:bridgewood){Bridgewood.new }
  it 'should get bridgewood weekend daily price for regular customer' do
    expect(bridgewood.daily_price_for 'regular', 'Sat').to eq(weekend_price_for_regular_customer)
    expect(bridgewood.hotel_type).to eq('bridgewood')
  end

  it 'should get bridgewood weekday daily price for regular customer' do
    expect(bridgewood.daily_price_for 'regular', 'Fri').to eq(weekday_price_for_regular_customer)
  end

  it 'should get bridgewood weekday daily price for rewards customer' do
    expect(bridgewood.daily_price_for 'rewards', 'Thu').to eq(weekday_price_for_rewards_customer)
  end

  it 'should get bridgewood weekday daily price for rewards customer' do
    expect(bridgewood.daily_price_for 'rewards', 'Sun').to eq(weekend_price_for_rewards_customer)
  end

  it 'should get bridgewood weekday daily price for rewards customer' do
    expect(bridgewood.hotel_rate).to eq(4)
  end
end