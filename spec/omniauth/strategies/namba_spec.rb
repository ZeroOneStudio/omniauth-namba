require 'spec_helper'

describe "OmniAuth Namba" do
  subject do
    OmniAuth::Strategies::Namba.new(nil, @options || {})
  end	

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('namba').should == 'Namba'
  end

  it 'should has correct Namba site' do
    subject.options.client_options.site.should eq('http://api.namba.kg')
  end

  it 'should has correct request token path' do
    subject.options.client_options.request_token_path.should eq('/oauth/request_token.php')
  end

  it 'should has correct access token path' do
    subject.options.client_options.access_token_path.should eq('/oauth/access_token.php')
  end

  it 'should has correct authorize url' do
    subject.options.client_options.authorize_url.should eq('http://login.namba.kg/login2.php')
  end
end
