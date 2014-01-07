$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter, 'with argument "foo"' do
  before do
    @filter = MessageFilter.new('foo')
  end

  it { expect(@filter).to be_detect('hello from foo') }
  it { expect(@filter).not_to be_detect('hello, world') }
end
