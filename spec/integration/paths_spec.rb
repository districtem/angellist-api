require 'spec_helper'

describe AngellistApi::Client::Paths do
  use_vcr_cassette 'paths'

  let(:client) { AngellistApi::Client.new }

  it 'gets all paths between user and specified users or startups' do
    pending 'an approach for VCR integration testing without exposing a key publicly'
    paths = client.get_paths 
    paths.should be_true 
  end
end