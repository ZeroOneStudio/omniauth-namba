## omniauth-namba Ruby gem

[![Build Status](https://secure.travis-ci.org/ZeroOneStudio/omniauth-namba.png)](http://travis-ci.org/ZeroOneStudio/omniauth-namba)

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

Use `:net` locale if you want to access [namba.net][] API. `"kg"` is the default locale so you can simply use `provider :namba, "key", "secret"`

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

Detailed description of each fields goes [here][].

[here]: http://dev.namba.kg/api_description.php

## Acknowledgements

Many thanks to [@puzanov][] for active promotion.

[@puzanov]: https://github.com/puzanov

## Licence
MIT License. Copyright (c) 2012 ZERO.ONE

