require 'spec_helper'

describe AngellistApi::Client::Paths do
  let(:client) { AngellistApi::Client.new }

	describe '#get_paths' do
    it 'gets 1/paths/' do
        #user_ids = [123, 456, 789] Example for using IDs
        #direction = "following" Example for using direction
        #options = { :user_ids => user_ids.join(','), :direction => ('') } Example options with IDs and direction
      options = { :some => "options "}
      client.should_receive(:get).with('1/paths', options).and_return('success')
      client.get_paths(options).should == 'success'
    end
  end
end
