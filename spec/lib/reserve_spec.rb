require_relative '../spec_helper'

describe Reserve do
  let(:lakewood){Lakewood.new}
  let(:reserve){Reserve.new}
  let(:date){['sat','fri','sun']}

  it 'should return the total lakewood price for regular customer' do
    expect(reserve.send(:calculate_total_price_for, 'lakewood', 'regular', date)).to eq(290)
  end

  it 'should return the total lakewood price for rewards customer' do
    expect(reserve.send(:calculate_total_price_for, 'lakewood', 'rewards', date)).to eq(240)
  end

  it 'should return the total bridgewood price for regular customer' do
    expect(reserve.send(:calculate_total_price_for, 'bridgewood', 'regular', date)).to eq(280)
  end

  it 'should return the total bridgewood price for rewards customer' do
    expect(reserve.send(:calculate_total_price_for, 'bridgewood', 'rewards', date)).to eq(210)
  end

  it 'should return the total ridgewood price for regular customer' do
    expect(reserve.send(:calculate_total_price_for, 'ridgewood', 'regular', date)).to eq(520)
  end

  it 'should return the total ridgewood price for rewards customer' do
    expect(reserve.send(:calculate_total_price_for, 'ridgewood', 'rewards', date)).to eq(180)
  end

  it "the cheapest hotel name should be lakewood" do
    expect(reserve.cheapest_hotel_with_highest_rate('regular',['mon','tues','wed'])).to eq ('lakewood')
  end

  it "the cheapest hotel name should be bridgewood" do
    expect(reserve.cheapest_hotel_with_highest_rate('regular',['fri','sat','sun'])).to eq ('bridgewood')
  end

  it "the cheapest hotel name should be ridgewood" do
    expect(reserve.cheapest_hotel_with_highest_rate('rewards',['sat','fri','thur'])).to eq ('ridgewood')
  end

end

