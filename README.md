# Lorempixel

A Rails view helper for placeholder images via http://lorempixel.com

## Installation

Add this line to your application's Gemfile:

    gem 'lorempixel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lorempixel

## Usage

to get a random picture of 400 x 400 pixels
		
	<%= lorempixel_image_tag "400" %>

to get a random picture of 400 x 200 pixels

	<%= lorempixel_image_tag "400X200" %>

to get a random picture of the sports category:

	<%= lorempixel_image_tag "400", :category => "sports" %>

to get picture no. 1/10 from the sports category

	<%= lorempixel_image_tag "400", :category => "sports", :item => 1 %>

...with a custom text on the random Picture

	<%= lorempixel_image_tag "400", :text => "Dummy-Text" %>

...with a custom text on the selected Picture
    
    <%= lorempixel_image_tag "400X200", :text => "Dummy-Text", :type=> 'gray', :category => "sports", :item => 1 %>

Alternatively, calling lorempixel will work as well:

	<%= lorempixel "400" %>