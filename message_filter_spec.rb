$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter, 'with argument "foo"' do
  before { @filter = MessageFilter.new('foo') }
  it { expect(@filter).to be_detect('hello from foo') }
  it { expect(@filter).not_to be_detect('hello, world') }
end

describe MessageFilter, 'with argument "foo","bar"' do
  before { @filter = MessageFilter.new('foo', 'bar') }
  it { expect(@filter).to be_detect('hello from bar') }
  it { expect(@filter).to be_detect('hello from foo') }
  it { expect(@filter).not_to be_detect('hello, world') }
end
