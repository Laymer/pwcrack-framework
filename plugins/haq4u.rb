#!/usr/bin/env ruby
#
# Plugin haq4u
# Author L
# Date   2018-06-28
#

plugin 'haq4ula' do 
  web_server 'http://haq4u.com'
  supported_algorithm :md5, :sha1

  crack {
    r = get "http://#{passwd}.haq4u.com"
    extract(r.body, /\.haq4u\.com">(.+?)<\/a><\/br>/)
  }
end

