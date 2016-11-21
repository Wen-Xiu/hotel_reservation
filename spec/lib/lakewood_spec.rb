require_relative '../spec_helper'

describe Hotel do
  let(:weekend_price_for_regular_customer){90}
  let(:weekday_price_for_regular_customer){110}
  let(:weekend_price_for_rewards_customer){80}
  let(:weekday_price_for_rewards_customer){80}
  let(:lakewood){Lakewood.new }
  it 'should get lakewood weekend daily price for regular customer' do
    expect(lakewood.daily_price_for 'regular', 'Sat').to eq(weekend_price_for_regular_customer)
    expect(lakewood.hotel_type).to eq('lakewood')
  end

  it 'should get lakewood weekday daily price for regular customer' do
    expect(lakewood.daily_price_for 'regular', 'Fri').to eq(weekday_price_for_regular_customer)
  end

  it 'should get lakewood weekday daily price for rewards customer' do
    expect(lakewood.daily_price_for 'rewards', 'Thu').to eq(weekday_price_for_rewards_customer)
  end

  it 'should get lakewood weekday daily price for rewards customer' do
    expect(lakewood.daily_price_for 'rewards', 'Sun').to eq(weekend_price_for_rewards_customer)
  end

  it 'should get lakewood weekday daily price for rewards customer' do
    expect(lakewood.hotel_rate).to eq(3)
  end
end