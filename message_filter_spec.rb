$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do
  share_examples_for 'MessageFilter with arggment "foo"' do
    it { expect(@filter).to be_detect('hello from foo') }
    it { expect(@filter).not_to be_detect('hello, world') }
    it { expect(@filter.ng_words).not_to be_empty }
  end

  context 'with argument "foo"' do
    before { @filter = MessageFilter.new('foo') }
    it_should_behave_like 'MessageFilter with arggment "foo"'
  end

  context 'with argument "foo","bar"' do
    before { @filter = MessageFilter.new('foo', 'bar') }
    it { expect(@filter).to be_detect('hello from bar') }
    it_should_behave_like 'MessageFilter with arggment "foo"'
  end
end
