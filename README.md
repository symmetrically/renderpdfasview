# Renderpdfasview

A simple RubyGem to render views in Rails Application in PDF format

## Installation

Add this line to your application's Gemfile:

    gem 'renderpdfasview'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install renderpdfasview

## Usage

    class UserController < ApplicationController

        def index
            
            respond_to do |format|
                
                format.html
                format.pdf { render :pdf => "pdfname" }
            end

        end

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
