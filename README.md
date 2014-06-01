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

	<%= lorempixel_image_tag "400x200" %>

to get a random gray picture of 400 x 400 pixels

	<%= lorempixel_image_tag "400" , :type => "g"%>

to get a random picture of the any category given below: 

[abstract , animals, business, cats, city, food, nightlife, fashion, people, nature, sports, technics, transport ]

	<%= lorempixel_image_tag "400", :category => "sports" %>

to get picture no. 1/10 from the sports category

	<%= lorempixel_image_tag "400", :category => "sports", :item => 1 %>

...with a custom text on the random Picture

	<%= lorempixel_image_tag "400", :category => "sports", :text => "Dummy-Text" %>

...with a custom text on the selected Picture
    
    <%= lorempixel_image_tag "400x200", :category => "sports", :item => 1, :text => "Dummy-Text" %>

Alternatively, calling lorempixel will work as well:

	<%= lorempixel "400" %>