module ApplicationHelper

	#Return a title on a per-page basis
	def title
		base_title = "JuegueBalon"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
	def logo
		image_tag("logo.png", :alt => "Juegue Balon")
	end
		
	def facebook
		image_tag("facebook_button.png", :alt => "Facebook")
	end
	
	def twitter
		image_tag("twitter_button.png", :alt => "Twitter")
	end
	
	def google
		image_tag("google_button.png", :alt => "Google+")
	end
	
	def like
		image_tag("fb_like.jpg", :alt => "Like", :class => "like")
	end
	
	def comment__cs_path
		'/'
	end
end
