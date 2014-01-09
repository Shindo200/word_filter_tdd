$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

share_examples_for 'MessageFilter with arggment "foo"' do
  it { expect(@filter).to be_detect('hello from foo') }
  it { expect(@filter).not_to be_detect('hello, world') }
end

describe MessageFilter, 'with argument "foo"' do
  before { @filter = MessageFilter.new('foo') }
  it_should_behave_like 'MessageFilter with arggment "foo"'
end

describe MessageFilter, 'with argument "foo","bar"' do
  before { @filter = MessageFilter.new('foo', 'bar') }
  it { expect(@filter).to be_detect('hello from bar') }
  it_should_behave_like 'MessageFilter with arggment "foo"'
end
