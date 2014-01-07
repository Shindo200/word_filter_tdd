$: << __dir__
require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do
  it 'should detect message with NG word' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello from foo')).to be_truthy
  end
end
