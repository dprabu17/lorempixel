require "lorempixel/version"

module Lorempixel
	module ViewHelpers   
		def lorempixel_image_tag(size, opts={})
			size = "#{size}" unless size.is_a?(String)
      		config = {
		        :alt => (opts[:text] || "A lorempixel image"),
		        :height => (size.split('x')[1] || size.split('x')[0]),
		        :width => size.split('x')[0],
		        :item => opts[:item],
		        :text => opts[:text].gsub(/\s+/, "-"),
		        :category => opts[:category],
		        :type => opts[:type]
		      }.merge!(opts)

		      src = "http://lorempixel.com/#{config[:width]}/#{config[:height]}"
		      
		      # lorempixel  option
		      	
		      if config[:type]
		      	src = "http://lorempixel.com/#{config[:type]}/#{size}"
		      end
		      
		      if config[:text]
		        src += "/#{config[:text]}"
		      end

		      if config[:category]
		        src += "/#{config[:category]}"
		        if config[:category_item]
		        	src += "/#{config[:category]}/#{config[:category_item]}"
		        	if config[:text]
		        		src += "/#{config[:category]}/#{config[:category_item]}/#{config[:text]}"
		        	end
		        elsif config[:text]
		        	src += "/#{config[:category]}/#{config[:text]}"
		        end
		     end


		      image_tag = "<img src='#{src}' alt='#{config[:alt]}' height='#{config[:height]}' width='#{config[:width]}'"
		      image_tag += " title='#{config[:text]}'" if config[:text]
		      image_tag += " />"
		      return image_tag.html_safe if defined?(Rails)
		      image_tag
		end

		alias :lorempixel :lorempixel_image_tag
      
	end
end
require "lorempixel/railtie" if defined?(Rails)
