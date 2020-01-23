require_relative './spec_helper'

describe 'AssignRoom' do
  let!(:bookings) { JSON.parse(File.read("data/input.txt"), symbolize_names: true) }

  describe '#call' do
    before do
      @results = AssignRoom.call(bookings, 3)
    end

    it 'returns first booking equals [1,3,6,8,9]' do
      expect(@results[0]).to eq([1,3,6,8,9])
    end

    it 'returns second booking equals [2,5,7]' do
      expect(@results[1]).to eq([2,5,7])
    end

    it 'returns last booking equals [4]' do
      expect(@results[2]).to eq([4])
    end
  end
end