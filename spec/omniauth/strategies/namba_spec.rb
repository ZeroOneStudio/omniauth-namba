require 'spec_helper'

describe "OmniAuth Namba" do
  subject do
    OmniAuth::Strategies::Namba.new(nil, @options || {})
  end	

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('namba').should == 'Namba'
  end
end
