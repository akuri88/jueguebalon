class PagesController < ApplicationController
	include Databasedotcom::Rails::Controller

	def home
		@feed = Post__c.query("Live__c = true ORDER BY CreatedDate DESC LIMIT 10")
		@main_feed = @feed[0..3]
		@secondary_feed = @feed[0..9] # Cambiar a partir del 4 [4..9]
	end

	def futmex
		@title = "FutMex"
		@feed = Post__c.query("Section__c = 'Futmex' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 8")
		@main_feed = @feed[0..2]
		@secondary_feed = @feed[3..7]
	end

	def soccer
		@title = "Soccer"
		@feed = Post__c.query("Section__c = 'Soccer' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 8")
		@main_feed = @feed[0..2]
		@secondary_feed = @feed[3..7]
	end

	def baseball
		@title = "Beisbol"
		@feed = Post__c.query("Section__c = 'Baseball' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 8")
		@main_feed = @feed[0..2]
		@secondary_feed = @feed[3..7]
	end

	def football
		@title = "Americano"
		@feed = Post__c.query("Section__c = 'Football' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 8")
		@main_feed = @feed[0..2]
		@secondary_feed = @feed[3..7]
	end

end
