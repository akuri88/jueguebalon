class PostsController < ApplicationController
	include Databasedotcom::Rails::Controller

	def show
		@id = params[:id]
		@post = Post__c.query("Id = '#{@id}' LIMIT 1")
		@recent = Post__c.query("Id != '#{@post[0].Id}' AND Section__c = '#{@post[0].Section__c}' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 5")
		@related = Post__c.query("Id != '#{@post[0].Id}' AND Section__c = '#{@post[0].Section__c}' AND Live__c = true ORDER BY CreatedDate DESC LIMIT 5")
		@comments = Comment__c.query("Post__c = '#{@id}' ORDER BY CreatedDate DESC")
		@comment = Comment__c.new
	end

end
