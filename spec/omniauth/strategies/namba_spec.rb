require 'spec_helper'

describe "OmniAuth Namba" do
  subject do
    OmniAuth::Strategies::Namba.new(nil, { :locale => "kg" })
  end	

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('namba').should == 'Namba'
  end

  it 'should has correct Namba site' do
    subject.options.client_options.site.should eq("http://api.namba.#{subject.options.locale}")
  end

  it 'should has correct request token path' do
    subject.options.client_options.request_token_path.should eq("/oauth/request_token.php")
  end

  it 'should has correct access token path' do
    subject.options.client_options.access_token_path.should eq("/oauth/access_token.php")
  end

  it 'should has correct authorize url' do
    subject.options.client_options.authorize_url.should eq("http://login.namba.#{subject.options.locale}/login2.php")
  end

  it 'should not allow add locales except kg or kz' do
    expect {
      OmniAuth::Strategies::Namba.new(nil, { :locale => "za" })
    }.to raise_error(ArgumentError, "Available locales are only kg or kz")
  end
end
