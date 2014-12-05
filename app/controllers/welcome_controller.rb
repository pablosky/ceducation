class WelcomeController < ApplicationController

def index

	#redirect_to "http://ceducation-landing.herokuapp.com"
end

def get_tweets
	
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "fVCC3okcbRQTHHacV0DsLXoPX"
	  config.consumer_secret     = "xoa22O19KndlWVqb3o4d8ulafxAheCOxJd3Er1k6JrS5lfDO10"
	  config.access_token        = "82000432-xjA6FZk600gsJ4S48MT8LpFy50uMHkRT6N7asBxnk"
	  config.access_token_secret = "rhlkESoRZC6Ox3WpCdIDNqkz1lmG3gCeQlGcLjrY9BffL"
	end	

	client.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
  		"#{tweet.user.screen_name}: #{tweet.text}"
  	    @t = Tweet.new(:name => tweet.user.screen_name, :ttext => tweet.text, :date => tweet["created_at"]) 
  	    @t.save
	end
		
		#parsed_response = JSON.parse(response.body)
	    #parsed_response["results"].each do |tweet|
	    #@t = Tweet.new(:name => tweet["from_user_name"], :ttext => tweet["text"], :date => tweet["created_at"]) 
	
end

def save_text

	text = params[:text]

	@something = Word.create(:word => params[:text] , :definition => current_user.id)

	redirect_to words_path
end





end
