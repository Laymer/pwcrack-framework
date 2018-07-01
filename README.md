# 0x00 pwcrack-framework
pwcrack-framework 是一个用Ruby编写的密码自动破解框架，目前提供了20个在线破解和3个离线破解接口，支持15种算法破解

项目地址：[https://github.com/L-codes/pwcrack-framework](https://github.com/L-codes/pwcrack-framework)

# 0x01 Features
- Ruby2.3+ (tested with Ruby2.4 & Ruby 2.5)
- 支持Linux/OSX/Windows平台运行
- 支持在线和离线的进行破解密码明文
- 支持自动分析密文算法调用插件破解
- 提供简单DSL编写框架插件

# 0x02 Installing
```
$ git clone https://github.com/L-codes/pwcrack-framework
$ cd pwcrack-framework
$ gem install faraday_middleware faraday-cookie_jar
$ ruby pwcrack banner



          "$$$$$$''  'M$  '$$$@m
        :$$$$$$$$$$$$$$''$$$$'
       '$'    'JZI'$$&  $$$$'
                 '$$$  '$$$$
                 $$$$  J$$$$'
                m$$$$  $$$$,
                $$$$@  '$$$$_         pwcrack-framework
             '1t$$$$' '$$$$<
          '$$$$$$$$$$'  $$$$          version 1.0.0
               '@$$$$'  $$$$'
                '$$$$  '$$$@
             'z$$$$$$  @$$$
                r$$$   $$|
                '$$v c$$
               '$$v $$v$$$$$$$$$#
               $$x$$$$$$$$$twelve$$$@$'
             @$$$@L '    '<@$$$$$$$$`
           $$                 '$$$


    [ Github ] https://github.com/L-codes/pwcrack-framework

                       [ Plugin Count ]

         Online Plugin: 20        Offline Plugin: 3

                  [ Algorithm Plugin Count ]

            md5: 19            sha1: 12          md5_16:  7
         sha256:  6          sha512:  6           mysql:  5
           ntlm:  5          sha384:  4          mysql3:  4
            md4:  4          sha224:  1     cisco_type7:  1
     h3c_huawei:  1              lm:  1   juniper_type9:  1

```

# 0x03 Example usage

# Examples 1
```
$ ./pwcrack 15f6f8dc036519d7fe15b39338f6e5db
[+] Cipher Algorithm: MD5 or MD4 or LM or NTLM or CISCO_TYPE7

( 0.23s)           bugbank: twelve
( 0.28s)              cmd5: twelve
( 0.32s)              xmd5: twelve
( 0.35s)             ttmd5: t*****
( 0.40s)              pmd5: twelve
( 0.63s)               80p: twelve
( 0.70s)       md5_my_addr: twelve
( 0.70s)          nitrxgen: twelve
( 0.98s)       hashtoolkit: twelve
( 1.06s)               lea: twelve
( 1.16s)        md5decrypt: twelve
( 1.52s)        md5cracker: twelve
( 2.32s)           gromweb: twelve
( 2.32s)           gromweb: twelve
( 3.53s)              dmd5: twelve
( 3.87s)      hashcracking: twelve
( 3.95s)            cmd5en: twelve
( 4.80s)           haq4ula: twelve

[+] PWCrack (21/16) in 4.81 seconds.
```
## Examples 2
```
$ ./pwcrack gets
Cipher Text
>> aK9Q4I)J'#[Q=^Q`MAF4<1!!

[+] Cipher Algorithm: H3C_HUAWEI

( 0.00s)        h3c_huawei: 84432079

[+] PWCrack (1/1) in 0.00 seconds.
```
## Examples 3
```
$ ./pwcrack -q 5f4dcc3b5aa765d61d8327deb882cf99 md5
password
```

# 0x04 Problem
如在使用过程中发现bug或有好的建议，欢迎提交[Issues](https://github.com/L-codes/pwcrack-framework/issues)和[Pull Requests](https://github.com/L-codes/pwcrack-framework/pulls)
