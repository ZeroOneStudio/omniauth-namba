## omniauth-namba Ruby gem

[![Gem Version](https://badge.fury.io/rb/omniauth-namba.png)](http://badge.fury.io/rb/omniauth-namba)
[![Build Status](https://secure.travis-ci.org/ZeroOneStudio/omniauth-namba.png)](http://travis-ci.org/ZeroOneStudio/omniauth-namba)
[![Coverage Status](https://coveralls.io/repos/ZeroOneStudio/omniauth-namba/badge.png)](https://coveralls.io/r/ZeroOneStudio/omniauth-namba)
[![Code Climate](https://codeclimate.com/github/ZeroOneStudio/omniauth-namba.png)](https://codeclimate.com/github/ZeroOneStudio/omniauth-namba)
[![Dependency Status](https://gemnasium.com/ZeroOneStudio/omniauth-namba.png)](https://gemnasium.com/ZeroOneStudio/omniauth-namba)

This gem contains the Namba.kg strategy for OmniAuth. Namba.kg uses the OAuth 1.0a flow.

## Usage
Add the strategy to your `Gemfile`:

    gem "omniauth-namba"

For a Rails application you'd now create an initializer `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :namba, 'key', 'secret', locale: "kg"
    end

Or for a Rack application:

    use OmniAuth::Builder do
      provider :namba, "key", "secret", locale: "kg"
    end

If you use omniauth with Devise just add configuration to `devise.rb` initializer:
 
    Devise.setup do |config|
      config.omniauth :namba, "key", "secret", locale: "kg"   
    end     

Use `"net"` locale if you want to access [namba.net][] API. `"kg"` is the default locale so you can simply use `provider :namba, "key", "secret"`

[namba.net]: http://www.namba.net

## Auth hash

    {
      :status => "I'm Chuck and I love Namba",
      :login => "chuck_norris",
      :firstname => "Chuck",
      :lastname => "Norris",
      :birthdate => "yyy-mm-dd 00:00:00",
      :sex => "0",
      :avatar => "0000000,0000000,0000000"
    }

Detailed description of each field goes [here][].

[here]: http://dev.namba.kg/api_description.php

## Acknowledgements

Many thanks to [@puzanov][] for active promotion.

[@puzanov]: https://github.com/puzanov

## Licence
MIT License. Copyright (c) 2012-2013 [ZERO.ONE][]

[ZERO.ONE]: http://zeroone.st




[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/ZeroOneStudio/omniauth-namba/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

