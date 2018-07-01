#!/usr/bin/env ruby
#
# Plugin bugbank
# Author L
# Date   2018-06-27
#

plugin 'bugbank' do 
  web_server 'https://www.bugbank.cn'
  supported_algorithm :md5, :md5_16, :sha1

  crack {
    r = post '/api/md5', {md5text: passwd}
    extract(r.body, /"answer":"(.+?)"/)
  }
end

