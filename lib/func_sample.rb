# encding:utf-8
########################################################################
# Copyright (C) alphaKAI @alpha_kai_NET 2013 http://alpha-kai-net.info #
# GPLv3 LICENSE                                                        #
########################################################################

#Usage
require_relative "./twitruby.rb"
#You must set consumer_key and consumer_secret.
#set access_token(_seret) is optional
consumer_key = ""
consumer_secret = ""
access_token = ""
access_token_secret = ""

#OAuth setting and begin OAuth Connection
cunsmer_array=[]
cunsmer_array << consumer_key << consumer_secret << access_token << access_token_secret
twi=TwitRuby.new
twi.initalize_connection(cunsmer_array)
#===

twi.update("sample")#post
puts twi.follower_ids("alpha_kai_NET")["ids"].size#get follower list
	
p twi.user_ava?("alpha_kai_NET")#Check screen_name available or unavailable

#Usage for Streamming API
#UserStream 
loop{
	twi.user_stream{|status|
		puts status["text"].to_s#puts get post body
	}
}