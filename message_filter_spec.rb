$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end

  it 'should detect message with NG word' do
    expect(@filter.detect?('hello from foo')).to be_truthy
  end

  it 'should not detect message with NG word' do
    expect(@filter.detect?('hello, world!')).to be_falsy
  end
end
