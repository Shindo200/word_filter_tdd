$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end

  it { expect(@filter.detect?('hello from foo')).to be_truthy }
  it { expect(@filter.detect?('hello, world!')).to be_falsy }
end
