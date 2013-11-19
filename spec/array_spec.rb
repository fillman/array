require 'bundler/setup'
require 'rspec'
require File.expand_path('../../array.rb', __FILE__)


describe Array do
  let(:array) { [1,2,3,4,5] }
  let(:not_allowed_methods) { [:reverse, :reverse!, :each] }

  it 'should reverse awesome without cheating' do
    not_allowed_methods.each { |m| array.should_not_receive(m) }
    array.backward.should eq([5,4,3,2,1])
  end

  it 'should be able to handle complex arrays' do
    [1, :two, 'three', ['four'], { five: "five" }].backward.should eq([{ :five => "five" }, ['four'], 'three', :two, 1])
  end

end
