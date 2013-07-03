# encding:utf-8
########################################################################
# Copyright (C) alphaKAI @alpha_kai_NET 2013 http://alpha-kai-net.info #
# GPLv3 LICENSE                                                        #
########################################################################

#ライブラリの使い方的な何か
require_relative "./twitruby.rb"

consumer_key = ""
consumer_secret = ""
access_token = ""
access_token_secret = ""

#認証部分
cunsmer_array=[]
cunsmer_array << consumer_key << consumer_secret << access_token << access_token_secret
twi=TwitRuby.new
twi.initalize_connection(cunsmer_array)
#ここまで

twi.update("sample")#投稿
puts twi.follower_ids("alpha_kai_NET")["ids"].size#follower一覧取得
	
p twi.user_ava?("alpha_kai_NET")#ユーザーの存在確認

#このブロックまるごとuser_streamまたはpublic_sample用の構文
loop do
	twi.user_stream{|str|
		puts str["text"].to_s
	}
end