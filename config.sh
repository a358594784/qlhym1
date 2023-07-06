## Version: v2.8.0
## Date: 2021-06-20
## Update Content: 可持续发展纲要\n1. session管理破坏性修改\n2. 配置管理可编辑config下文件\n3. 自定义脚本改为查看脚本\n4. 移除互助相关

## 上面版本号中，如果第2位数字有变化，那么代表增加了新的参数，如果只有第3位数字有变化，仅代表更新了注释，没有增加新的参数，可更新可不更新

## 在运行 ql repo 命令时，是否自动删除失效的脚本与定时任务
AutoDelCron="true"

## 在运行 ql repo 命令时，是否自动增加新的本地定时任务
AutoAddCron="true"

## 拉取脚本时默认的定时规则，当匹配不到定时规则时使用，例如: 0 9 * * *
DefaultCronRule=""

## ql repo命令拉取脚本时需要拉取的文件后缀，直接写文件后缀名即可
RepoFileExtensions="js py"

## 代理地址，支持http/https/socks，例如 http://127.0.0.1:7890
ProxyUrl=""

## 设置定时任务执行的超时时间，默认1h，后缀"s"代表秒(默认值), "m"代表分, "h"代表小时, "d"代表天
CommandTimeoutTime="1h"

## 设置批量执行任务时的并发数，默认同时执行5个任务
MaxConcurrentNum="5"

## 在运行 task 命令时，随机延迟启动任务的最大延迟时间
## 默认给javascript任务加随机延迟，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行，取消延迟赋值为空
RandomDelay=""

## 需要随机延迟运行任务的文件后缀，直接写后缀名即可，多个后缀用空格分开，例如: js py ts
## 默认仅给javascript任务加随机延迟，其它任务按定时规则准点运行。全部任务随机延迟赋值为空
RandomDelayFileExtensions="js"

## 每小时的第几分钟准点运行任务，当在这些时间运行任务时将忽略 RandomDelay 配置，不会被随机延迟
## 默认是第0分钟和第30分钟，例如21:00或21:30分的任务将会准点运行。不需要准点运行赋值为空
RandomDelayIgnoredMinutes="0 30"

## 如果你自己会写shell脚本，并且希望在每次运行 ql update 命令时，额外运行你的 shell 脚本，请赋值为 "true"，默认为true
EnableExtraShell="true"

## 是否自动启动bot，默认不启动，设置为true时自动启动，目前需要自行克隆bot仓库所需代码，存到ql/repo目录下，文件夹命名为dockerbot
AutoStartBot=""

## 是否使用第三方bot，默认不使用，使用时填入仓库地址，存到ql/repo目录下，文件夹命名为diybot
BotRepoUrl=""

## 安装python依赖时指定pip源
PipMirror="https://pypi.doubanio.com/simple/"

## 安装node依赖时指定npm源
NpmMirror="https://registry.npm.taobao.org"

## 通知环境变量
## 1. Server酱
## https://sct.ftqq.com
## 下方填写 SCHKEY 值或 SendKey 值
export PUSH_KEY=""

## 2. BARK
## 下方填写app提供的设备码，例如：https://api.day.app/123 那么此处的设备码就是123
export BARK_PUSH=""
## 下方填写推送图标设置，自定义推送图标(需iOS15或以上)
export BARK_ICON="http://qn.whyour.cn/logo.png"
## 下方填写推送声音设置，例如choo，具体值请在bark-推送铃声-查看所有铃声
export BARK_SOUND=""
## 下方填写推送消息分组，默认为"QingLong"
export BARK_GROUP="QingLong"

## 3. Telegram
## 下方填写自己申请@BotFather的Token，如10xxx4:AAFcqxxxxgER5uw
export TG_BOT_TOKEN=""
## 下方填写 @getuseridbot 中获取到的纯数字ID
export TG_USER_ID=""
## Telegram 代理IP（选填）
## 下方填写代理IP地址，代理类型为 http，比如您代理是 http://127.0.0.1:1080，则填写 "127.0.0.1"
## 如需使用，请自行解除下一行的注释
export TG_PROXY_HOST=""
## Telegram 代理端口（选填）
## 下方填写代理端口号，代理类型为 http，比如您代理是 http://127.0.0.1:1080，则填写 "1080"
## 如需使用，请自行解除下一行的注释
export TG_PROXY_PORT=""
## Telegram 代理的认证参数（选填）
export TG_PROXY_AUTH=""
## Telegram api自建反向代理地址（选填）
## 教程：https://www.hostloc.com/thread-805441-1-1.html
## 如反向代理地址 http://aaa.bbb.ccc 则填写 aaa.bbb.ccc
## 如需使用，请赋值代理地址链接，并自行解除下一行的注释
export TG_API_HOST=""

## 4. 钉钉
## 官方文档：https://developers.dingtalk.com/document/app/custom-robot-access
## 下方填写token后面的内容，只需 https://oapi.dingtalk.com/robot/send?access_token=XXX 等于=符号后面的XXX即可
export DD_BOT_TOKEN=""
export DD_BOT_SECRET=""

## 5. 企业微信机器人
## 官方说明文档：https://work.weixin.qq.com/api/doc/90000/90136/91770
## 下方填写密钥，企业微信推送 webhook 后面的 key
export QYWX_KEY=""

## 6. 企业微信应用
## 参考文档：http://note.youdao.com/s/HMiudGkb
## 下方填写素材库图片id（corpid,corpsecret,touser,agentid），素材库图片填0为图文消息, 填1为纯文本消息
export QYWX_AM=""

## 7. iGot聚合
## 参考文档：https://wahao.github.io/Bark-MP-helper
## 下方填写iGot的推送key，支持多方式推送，确保消息可达
export IGOT_PUSH_KEY=""

## 8. Push Plus
## 官方网站：http://www.pushplus.plus
## 下方填写您的Token，微信扫码登录后一对一推送或一对多推送下面的token，只填 PUSH_PLUS_TOKEN 默认为一对一推送
export PUSH_PLUS_TOKEN="8bb3d3baf3f047529a5eed1dcfa67e21"
## 一对一多推送（选填）
## 下方填写您的一对多推送的 "群组编码" ，（一对多推送下面->您的群组(如无则新建)->群组编码）
## 1. 需订阅者扫描二维码 2、如果您是创建群组所属人，也需点击“查看二维码”扫描绑定，否则不能接受群组消息推送
export PUSH_PLUS_USER=""

## 9. go-cqhttp
## gobot_url 推送到个人QQ: http://127.0.0.1/send_private_msg  群：http://127.0.0.1/send_group_msg
## gobot_token 填写在go-cqhttp文件设置的访问密钥
## gobot_qq 如果GOBOT_URL设置 /send_private_msg 则需要填入 user_id=个人QQ 相反如果是 /send_group_msg 则需要填入 group_id=QQ群
## go-cqhttp相关API https://docs.go-cqhttp.org/api
export GOBOT_URL=""
export GOBOT_TOKEN=""
export GOBOT_QQ=""

## 10. gotify
## gotify_url 填写gotify地址,如https://push.example.de:8080
## gotify_token 填写gotify的消息应用token
## gotify_priority 填写推送消息优先级,默认为0
export GOTIFY_URL=""
export GOTIFY_TOKEN=""
export GOTIFY_PRIORITY=0

## 11. PushDeer
## deer_key 填写PushDeer的key
export DEER_KEY=""

## 12. Chat
## chat_url 填写synology chat地址，http://IP:PORT/webapi/***token=
## chat_token 填写后面的token
export CHAT_URL=""
export CHAT_TOKEN=""

## 其他需要的变量，脚本中需要的变量使用 export 变量名= 声明即可


#畅架
export userIdl='1574390873610395649'
export Yunst='bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnRfaWQiOiIwMDAwMDAiLCJ1c2VyX25hbWUiOiIxMzQyMjQzODA0NyIsInJlYWxfbmFtZSI6InRydWUiLCJhdmF0YXIiOiJodHRwOi8vY2hhbmdqaWEyMDE5LXRlc3Qub3NzLWNuLXNoZW56aGVuLmFsaXl1bmNzLmNvbS91cGxvYWQvMjAyMDA3MDEvNmY3N2QyNDNhY2U4N2ZmOTMyOGJjYzA1ZDZlMWJiZWQucG5nIiwiYXV0aG9yaXRpZXMiOlsiYXBwIl0sImNsaWVudF9pZCI6ImNoYW5namlhX3RtaXNfYXBwIiwicm9sZV9uYW1lIjoiYXBwIiwibGljZW5zZSI6InBvd2VyZWQgYnkgZ2R5dW5zdCIsInBvc3RfaWQiOiIiLCJ1c2VyX2lkIjoiMTU3NDM5MDg3MzYxMDM5NTY0OSIsInJvbGVfaWQiOiIxIiwic2NvcGUiOlsiYWxsIl0sIm5pY2tfbmFtZSI6IuS4k-W_g-eahOiJvuiQqOWFiyIsImV4cCI6MTY2Njc5MTAwOSwiZGVwdF9pZCI6IiIsImp0aSI6IjlhZDI2M2VmLTI5MjctNGJjZi1iNzg1LTQ4ODU3Mzg5NzRjOSIsImFjY291bnQiOiIxMzQyMjQzODA0NyJ9.WezYBKMoKbvJznc5XNK1U_oiDZHTqAu3dWRML6ZpKwM'

#快手普通版
#番茄小说  #第一苹果 第二 安卓 第三 学艺
export fqmfxsckapp='21767141232e7397028e40ee5606c167@da726c5b10e82cf1e4366d60c7de1ce1'
#番茄畅听小说  #第一苹果 第二 安卓
export fqctckapp='51df889f0d29539095c64937980c72fb@969693d37fea5c84175d400f1d78ccc2'

export ksurl=''
export ksjsb_data="kuaishou.api_st=Cg9rdWFpc2hvdS5hcGkuc3QSoAEugaJcMn6KT__frMHR0AIzMuJ-lfmjsZidecm9zihedHmPeKUyKbivj5xYViWNNtGE-FlAc-jL4I0QJSW-jEofYxJEIotvDuuHoY7drUk_4C9wD8B8KWRmW_X9I0FgRVPBNv6tsgm868joL8y71Wu-Lseu3H3TGrEkZcr2uguX1GsbP-I2_mOnnzKZcwb3GQqAE68TlbH2phRwfhtSfbfiGhIgH75JxRxHRbwpYsUawhz3w5UiINCTiRPQ1f4FwXzPRSIdS2rtSdalZc-ilp2j-sKUKSNEKAUwAQ;"

##cookie 每个账号换行隔开
export ksjsbWithdrawTime="2"
##提现时间
export ksjsbtx="false"
##是否自动提现，默认false不自动提现
export ksjsbjbdh="false"
##是否提现前自动兑换金币，默认false不兑换
export ksjsbapitoken="jgnehgne_sdgsg5623f2sdfe"
##/填写token，必填


export pddddgyhd='{"AccessToken":"UYZIQVEDXNMA4PHH2FAEQCVIUWT4D2SXSR4ILQTTBM27X2EPEQGQ111a85e","Connection":"keep-alive","Accept-Encoding":"gzip, deflate, br","Content-Type":"application/json;charset=UTF-8","Origin":"https://mobile.yangkeduo.com","User-Agent":"Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/8.0.16(0x18001042) NetType/WIFI Language/zh_CN miniProgram","anti-token":"0aqWfqlFgchyj9eZ_nIfIq9gm14n5wp8TuLCZeOpPtm_TgHjBJdFEzcEYhhSXs0cdOtn3m940sZy9yVhVh7wsu4KAF9oJpFuN3X_ci_oiArA4YcR1hLGI1UZF-YlyKPJWgOUPSC3GpE1yqPp3iFYUmtaSwoShTKdkyMrbPMuqfCIwVhouyG1X2ifLVvA64j1a55OGi0Hlq6dRcOBjf84Ivt-txpN1_pWvIWvGJm3XWSrrNWXEbNCNmtKOdfn5hP6Bw_lJIl2fL6DPwgBv6_8HSHQXorg6A_cJJkJoEjX4ktgOYal9p0qlHFBEF01cekQ6ZVSVGgQDt0w2Gs2QUeRjWcZ82us9M3PQbqIZF2NUp5gwNBqrMcDLNQ8xSxbSaPi9uK0Qfzxg-9Uraqjy-zFpaFfpT_Fgm49GkPVZ22UZy4Vi_8zx0MeSBq9lKWkel0acxOStF2iV9UINY0gIWram1whaqWE77sJDJZRUtdSklLsAhdURE5vU2-bo6pQvYiYXRiXTfgBKMP3W2PVlRWdhQ_DrTGhlEIREeNhzKzYQFbzfdmXKXR1XT8XOXTcq67TtQxCfYFxGJhrnrTVjxmfEvrONjHNaQ8lulPHPMk75-hYnKPPMTMjVgQjQ1ErqXZgrIe_qxB8VX","Cookie":"garden_cache=%7B%22common_config%22%3A%221654931216112%22%7D; pdd_vds=gaLcNuPdaloebwyTydofoLQltxGTOwODaTLNNlPBOmPmauOsNfiNGbtfafEs; webp=1; _nano_fp=XpEyn0UjnpTyX0XYn9_FtQkTBRrIY6O9ec58V0md; PDDAccessToken=UYZIQVEDXNMA4PHH2FAEQCVIUWT4D2SXSR4ILQTTBM27X2EPEQGQ111a85e; pdd_user_id=8371240360; pdd_user_uin=ZVBUOVOYEZTFHO26UNVLUWG2EY_GEXDA; api_uid=Ck3bT2KkxLtHqABjQp/SAg==","Referer":"https://mobile.yangkeduo.com/garden_qingming544.html?fun_id=search&_pdd_fs=1&_pdd_tc=676666&_pdd_sbs=1&_x_query=%E6%9E%9C%E5%9B%AD&xcx_trace_id=10869338581254548&refer_page_sn=10015&refer_page_name=search_result&xcx_version=v8.1.3&refer_share_uid=8371240360&refer_share_pu=hacb3hL8L/rbLwLZL&refer_share_trace_id=10869338581254548&refer_share_id=lZdD53DTuvk9lBdZSfPnfcLpZ7N3hRu1","Host":"mobile.yangkeduo.com","Accept-Language":"zh-cn","Accept":"application/json, text/plain, */*","Content-Length":"306"}'
export pddddgyurl='https://mobile.yangkeduo.com/proxy/api/api/manorclearance/activity/detail?pdduid=8371240360@'



#腾讯视频福利签到
export txspCookie='access_token=57_RAySp9GzzUy06ci-jmU7YNzftTglzzn1MTw3DTFEbIRCkpWnIttB3Ecw6J6nfZHUCEYnj3egsQvfd1Ssx8uZtrczdtHpC3HbGa7pi7VJOOI; app_ver=8.6.20.25667; app_ver_all=8.6.20; appid=wxca942bbff22e0e51; caid=f398b529536157409767331fb24ffdc4; call_type=1; ctime=1655201198000; deviceModel=iPhone%207%20plus; deviceName=iPhone%207%20plus; guid=3a4ccbe8eadc11ec89cd6c92bf48bcb2; ia_device=; ip=120.86.41.190; isDarkMode=0; isJBOS=1; iv_device=94DIG6490%3AF6H07H%3BF0D785046DF87F869G%3B; main_login=wx; omgid=816be4cf76b8904837db1afaa0d37df4be60001011750d; openid=oQFqrjguPj1-q9uMGzaBCQ-KQ_G0; phone_type=iPhone%207%20plus; plat_bucketid=50700; platform=iOS; qimei36=4a3045ac384868e03097aab3000018f15b13; qua=QQLiveBrowser_8.6.20_123; recommend_setting_code=31; recommend_switch_value=1; refresh_token=57_Pc-Kw8V91SEfTChPtXokD4HEckug-ISljeojwdvEH7qkizhkvOvcn_0_-5wdbAPzYGbMt5MFE8BH5A3o7aYB1ZAo8iIZu6bttZ_im27YRnw; screenHeight=736; screenWidth=414; systemVersion=14.7.1; teenGuardSessionCode=1A6A5B5B3F9187EEBF3318237EE81A9C85B6AD38C0F3DC761266691513559511672593D529C4668BBA16D75FD3CC96B4D33B6D849B074F6AE93752B94DE6696CB3C23B3EF93547882D6C78539A329A6044F778C92967A5E21D2049D792064D0FEC81C6CDC79DAA590B0CA54F; turing_ticket=0101A7C84F32DB5C7B55174C24CF94169BB85CD2A57F135954EFBF81489AB2CFE923EE21B3FDAE0AF97D281A; us_stamp=1655201190000; usid=1655201190000423; ussn=1655099207000006; vdevice_qimei36=4a3045ac384868e03097aab3000018f15b13; video_appid=1000005; video_omgid=816be4cf76b8904837db1afaa0d37df4be60001011750d; video_platform=5; vuserid=1355163744; vusession=gOPQ9ZnUE07yKqLQI2ragQ..; wx_is_main=1; zdtime=1655201198529; pgv_pvid=15d90353be14693e'


export zq_cookies='zqkey=MDAwMDAwMDAwMJCMpN-w09Wtg5-Bb36eh6CPqHualq2jmrCarWSwzZdrhox-l6-4qmqXr6NthJl7mI-shMmXeqDau4StacS3o7GFooqXsKnEZoGvjWyEY2Ft&zqkey_id=3fb6fa99d7b4b55962696db50043c2c9&uid=62769255'



#liuqi拼多多
export pddck='8371240360&EK6ZJ3IQX4OCI3OMLS25JCQOACBD32NLQWGBKPTHTEUBLQMNSVRA111a85e#0aqAfxnUGclYY9EVwnzn9VwdLgwUFgZofraQTHzeGY-XWgOx1fgnfEhHN3Hr2M6u1TbvAVb9_T1wGHiTh99iQTYN4kgqTho_YmL3JxMRULLMmLOd88W7penzeNtTHsZU-lR5zZjoc-BNTUIV4x1dUq0nkseme9ZxJxxtWP7FaHkUO_SmvTFxYuV-kDVezjCSjH_Ti7doay56uiNOcsLCLhzb4xvBy5molTHVwcmme8IV8i-GqRuJGbiWS4CZf9Uxv0zOEgbUfbZvvBV1S1Z1HKtHPN7hrbNhVAyKsy8OiRrGOcwQPNgVEACwbPFSJCeXPX8blZ2QonP0IdTCexHX6453sRyLPnVzAeb5cXfkTTvt5qZUTfLUJBsLqo3DUmbzDgRmBRC4gZaUto0FxTvm8suE3IV_O23x4ly2ruPVa22zAo00qm7DE-scW8t2Hb23_DtHG2DV1E60C2fdGBHZSKiDyskG_8nDTLqy8-3ctf-kXrWb-B15gVK5VD_GOt0cDeRJiJG58uY_dlZ04dvWI3hIO5vA0bKXIJaOlge-38QJBs-Bnu8h8DWWp0lW8arMUzlbiU2k8yJv0ZAs8MdfLqozjE85sSzmjfJL5VnpBn4WgIfuB1QKS8uAOQ-eRmh-6t3KdmHwOSJ'

#临渊读特
export dt='access_token=58_5cDSvp4LaNZ8O-sPEBnsq1Y8exPxM2QterKSLvkUTn9UYgQu9-tOnanLh_6h5FTZ5CF9w3f_MG9s47JzT88AONgYBiKkW9SNS6rq9h3zzVM&gender=%E6%9C%AA%E7%9F%A5&device_id=988c707d-84b9-4fba-af8c-233aff01d18d&figureurl=https%3A%2F%2Fthirdwx.qlogo.cn%2Fmmopen%2Fvi_32%2FDYAIOgq83eoZPkwKs2pM0NnHtCjNPpuFzls8MnMtE7Gib3yDf96Me4RsvbFiciaUiaxhriajQIN3ZlIT7xXpyHTJe3Q%2F132&openid=oYj4NwEyfJqsvXylIYMhmVq0PM2o&nickname=%E6%88%91%E5%B0%B1%E6%98%AF%E6%88%91%EF%BC%8C%E9%A2%9C%E8%89%B2%E4%B8%8D%E4%B8%80%E6%A0%B7%E7%9A%84%E7%83%9F%E7%81%AB&grantType=custom_social&expires_in=2022-06-28%2023%3A19%3A39&platform=wechat@password=Aa358594784*&device_id= A0BC13FC-1391-404B-BE91-D4EED81B48CE&grantType=custom_pwd&account=13422438047'

#夜贝网络   
export ybwlapp='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJBdXRob3JpemF0aW9uIiwidXNlckluZm8iOiJ7XCJtb2JpbGVcIjpcIuW_q-aNt-aMh-S7pFwiLFwicm9sZVwiOlwiQ1VTVE9NRVJcIixcInVzZXJJZFwiOlwiMzE4OThcIixcInVzZXJuYW1lXCI6XCLlv6vmjbfmjIfku6RcIn0iLCJhdWQiOiJBUFAiLCJuYmYiOjE2NTY4NjE2MDgsImlzcyI6IlNFUlZFUiIsImV4cCI6MTY1Njk0ODAwOCwiaWF0IjoxNjU2ODYxNjA4fQ.R-KbG91LyJ1kKUopetNxsM79Qj4ploaa3Te9YiXn_xM'


#胖虎必看
export bkxshd='sessionid=af067cc9fff044828bffc5701b712b7f@sessionid=229aeb9e8eed491aa84301225a2d8173@sessionid=c2cc847c3e8f40fa9894b9166ed2736c@sessionid=90f800caa6dd4af294c1fbdd34b44d1f@sessionid=4061d8afe0254dbcba9800845e0096d1@sessionid=9542775669274d64995bf7853a56d732'
#必看提现
export withdraws='2'

#肥皂必看  @1  苹果
export bkmfxsapp='vId=837dabe6c8744799b0de358cd123982f;sessionid=229aeb9e8eed491aa84301225a2d8173'

#河姆渡
export hmdAccount="13422438047#Aa123456"


# 湘窖俱乐部：积分换酒
export xjjlbtoken='account=gh_c0c598322f2e&openId=oQPZU5V64jqM5VORqw8OvwctUaxg'


#export kww_py="[{'name':'苹果手机','memberId':'6128656348235224'},{'name':'安卓手机','memberId':'3967318142509687'},{'name':'俊鑫大号','memberId':'3012401276432645'},{'name':'俊鑫小号','memberId':'0964795597790434'},{'name':'妈','memberId':'6811020778922804'},{'name':'因','memberId':'0504003610320969'},{'name':'外婆','memberId':'3916143586165042'},{'name':'爸','memberId':'7301804130437541'},{'name':'雄','memberId':'8113033558018004'},{'name':'桂朱','memberId':'5824312646442730'},{'name':'学葆','memberId':'0043110802238694'}]"

export kww_py="[{'name':'苹果手机','memberId':'6128656348235224'},{'name':'安卓手机','memberId':'3967318142509687'},{'name':'妈','memberId':'6811020778922804'},{'name':'因','memberId':'0504003610320969'},{'name':'外婆','memberId':'3916143586165042'},{'name':'爸','memberId':'7301804130437541'},{'name':'雄','memberId':'8113033558018004'},{'name':'桂朱','memberId':'5824312646442730'},{'name':'学葆','memberId':'0043110802238694'}]"


#微信小程序：同程旅行
export tczs='{"info":{"appId":"10015","userId":"3917c888acdefcd8d39019933e5d0aad","activeId":"A_68492_R_0_D_20200903","startTime":1599062400000,"endTime":1956412800000,"time":"1657015170229","openId":"5B6Qz4c87NHagj86uyW4YqNtdln7zD3sE0/1QFfpYCY=","nickname":"快捷指令","pltId":"14656739","avatar":"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTILkZb3D5AyQnHzp18PmBic23qoQLM0Sw6cQECcoCEkmNtDgPMxEqS09nRYaJ8DP3Tgjm6gEGhicj1A/132","platform":"{\"money\":0,\"moneyId\":\"X029\"}","sign":"e8c2c3af9f01f8c3dc163c3f7fc8015c"},"sourceChannel":"808166170"}'


export ketuick='y7lJuxLX8pZWxTvIwic2op2RXOrOcNn77u7tlgW-j1W5wr2S9AYegLOcnlXo8-_xWUekjskyHKMoIeZhzkNDc4RMP-aiULlB5baUx1xHbliK1gV5n-8Gt2BTQ0Sx6Tv0@D6hP-DQHNOiyl-8rqdcGAnRGBoJz31NHkVfz3q5SGiXF5TDvQpHlz1uuGzp6o-AgeDI0m1iirXaKa6vZUNfvYTD_ibg7EAwB6wd0NLYvJ_j8xG8tpJZKXQrUYdTb_-9FDjvef4qAblY'


export arrs="{"gg":"公告你XXX","bb":"当前已是最新版本","num":"100000"}"

export tycash='500000'


export qmxsCookie='T=pC2imyG_4l28mf1hRC1GgfY13CNGBfYY4RxkmfJjOl2xq0YW3q2Emqo7fSsGmCu14Ruyg021ul2mqyxE3qwwOM2Qu_smFM-l3q1ogfUWkC2Nk0Mehz1vmfnI3Ts2q0o1hl2i3U4nfq2zf3Y2cf1jpfxsmfJVkhGAczuEhUkTc-UWFCNGBqnZp0NGN-UfqhNAmzuEhRkNc-UIul2xq0YW3q1Dmf21ul2xB2Gw3q1DmR2VpeGpc-pZhS1mm21fhhkmBf-MqhGyBR2fqznpg-MUhqUNNo10RCxmm-21h0NigqgLRS2GmS9E3qYqOo1I3hp8RygnhUkRgfUfmENGBhRwqhGMuR2CgqnGmzJ1NR18khRmhMRGmCu14ROnByoh3hpGmf2e3qYqgqoCfq28mf21h0NimU14qSspg2piq-NGN-213CNGB-1jqTo3OyGCRq28m-fnhUkGNfUVhhG8Ryue3qYmOyNoRTkTklnYq2Ryg02VBEugFM1W424YOo1I3hpGm-2Ehq1suMYV3C1Nm-fnhRkNgfYQRz28kyOnq2uGNfU_3hoAcznQhS1RNfJfmE2AR01Qh-kGuU1_RhRmBfREhRuNc0YWmE1mko-ehMksNfY0hhNGmCu14zYqg02VBExARyQYhUkGc-YVmekgFM1wqzYRmfJVFCNGBqnWqINimR113hpNFEu1qRuAgoKLByQGmzJEh0NimqoCNqQ4g-4w3q1DuMnI3TsxRUo1hl2GmfnI3Ts4gTolq-uRmfJV3T2zf3YCf2N6hR1mpoNt4-0M4RxekEprmS0UFS2ykaU4BqokR2x4OLUmfMQNhMGiBekaRqR5NSsrgI2ih5UsO0kZfRp8NEojqIopFeNRmfjlOIkFRRpiCUsafIkRcyowgTu4Bz-Ec21thlxfg2dEkzkgBzk_fzuHcfOlk-J_uE2AqTx-3lR6cIk7NS2hu0R1qqkrAhp03fnnF-Rk3R-QmMQpklpWp0KrB2kTFhG8Nld%3D; Path=/; Domain=wtzw.com; HttpOnly; Secure#eyJhbGciOiJSUzI1NiIsImNyaXQiOlsiaXNzIiwianRpIiwiaWF0IiwiZXhwIl0sImtpZCI6IjE1MzEyMDM3NjkiLCJ0eXAiOiJKV1QifQ.eyJleHAiOjE2NzgwOTczMzAsImlhdCI6MTY3NjgwMTMzMCwiaXNzIjoiIiwianRpIjoiYjg2YzFhNzZjZTM4ZmI4Y2FmYTZlY2M5MmM4ZDUxZjIiLCJ1c2VyIjp7InVpZCI6OTc1OTU1MTksIm5pY2tuYW1lIjoi5ZOE5ZOEIiwiaW1laSI6IiIsInV1aWQiOiIiLCJkZXZpY2VJZCI6IiIsInJlZ1RpbWUiOjE1OTI5MjM2OTgsInZpcEV4cGlyZUF0IjowLCJzbV9pZCI6IjIwMjAwNjIzMjE1MTM1NmViODg1ZWI5MGI1NzlmNzU5OTkyNTJmNDIwZGU5ZmEwMWMxNzkzZDY3ODA5NDM3IiwibnV0IjoxNTkyOTIzNjk4LCJpZnUiOjAsImlzX3JiZiI6MCwiYWN0X2lkIjowLCJiaW5kX2F0IjowLCJ0aWQiOiIiLCJ0X21vZGUiOjJ9fQ.WRS_MZZdSKbA4aXsGvxjq5ByFD-XmaQVXXs-ZSKMOBJo4BUeb6px09JN-ApDhQVO7qlX1YC3UiK6p4PUVJ_PBP4Uxap27Xni7zZKOhT2_7FdLndGRgHyG6FOGwyNZ8dKe_x4n6yStEiYdx96DILqBEQIY-kKYGfzdH8nTcA2O7o'

export ddnstock='Hm_lvt_5f1bc900ab954d0d1e03eb7f29aba601=1681575750; ksuser=12d79aaf-8cb5-4eeb-8354-9ff2100357b0; csrftoken=KAGwCWZDlnDmyyHRPOsEU0FOaIrUVPfLfDtJpgLSr1tJgl0OhVIcnUC6NjyQP5rO; sessionid=f5ix2m8f1mix2fegozj8ghkfcd6ud5ym; Hm_lpvt_5f1bc900ab954d0d1e03eb7f29aba601=1681575770'
export csrftoken='KAGwCWZDlnDmyyHRPOsEU0FOaIrUVPfLfDtJpgLSr1tJgl0OhVIcnUC6NjyQP5rO'


export djxsCookie='sensorsdata2015jssdkcross=%7B%22distinct_id%22%3A%22j124125302%22%2C%22first_id%22%3A%22183bb463a952a4-0bea80a9469572-3b176a50-304704-183bb463a98104%22%2C%22props%22%3A%7B%22%24latest_traffic_source_type%22%3A%22%E7%9B%B4%E6%8E%A5%E6%B5%81%E9%87%8F%22%2C%22%24latest_search_keyword%22%3A%22%E6%9C%AA%E5%8F%96%E5%88%B0%E5%80%BC_%E7%9B%B4%E6%8E%A5%E6%89%93%E5%BC%80%22%2C%22%24latest_referrer%22%3A%22%22%7D%2C%22%24device_id%22%3A%22183bb463a952a4-0bea80a9469572-3b176a50-304704-183bb463a98104%22%7D; sajssdk_2015_cross_new_user=1'
export djxsReferer='https://dj.palmestore.com/zycl/gold/index?idfa=00000000-0000-0000-0000-000000000000&jailbreak=1&kt=151ee6dcaeb98f344da94fc01531e52c&ku=j124125302&p1=2511CEC1386044DC96C35730E78CAE20&p11=584&p12=&p16=iPhone9,2&p2=126001&p21=00003&p22=iOS,14.7.1&p25=14070460&p3=17148860&p4=501660&p5=1001&p6=AAAAAAAAAAAAAAAAAAAA&p7=AAAAAAAAAAAAAAA&p9=0&pc=10&rgt=7&source=welfare&usr=j124125302&zyeid=a304a493-3743-459f-a775-3f12ddb2c492&zysid='

//export gqcqCookie="2ff6a33148e34abda995f16d4f2d0ef4"
##设置变量gqcqDraw为1会消耗积分抽奖

export XPNCCK='784e3527ed01203abd78aa8acae61ea3'+\n'a311126b094ae1b6914d193276a26868'

export ylwCookie='18117948958#q147258'

export gqslAccount="{"sig":"EB9626E3E5E15AD49751E9B831329A2B","data":"N5SeMji0ZEFooopywZQxoVSnVgrv0aSjYWtSm5xKevWAljolV8o13WuF\\/nxD2zFg2rjGhbTqJCQe0XXYBLayuvgkYiqt96wu1ASYD+nnNdb6PLHfU9H6TlWiO9BPO1nrHFVYZ1zLRvSLVu+V0nhZmrb0WDKs2VOtaypsTsEI9o9V2fWDlClnCWSWvEqhYlGDlTxgFqPEAOiZRqC0QMI+FcvsIexGpRyqHfudK2mcn7oEv8oxsG0qcQvcBJJWa0sxAQ1zjkSGF3fYOFz4aii47DRbvr6yrH4Etjik5DOx3z5CEni2J1CbIjM2sohLOv6asiAMG\\/y7rlwKTaIT5a53aA==","operatorId":"9A2E22F6-0759-4D94-8E88-687F9D9ECD5F","timestamp":"1686988092155","appId":"user-soa-service"}"
export apiproxy='http://api.xiequ.cn/VAD/GetIp.aspx?act=get&uid=119656&vkey=5E20594C41410F24B71B828692AA86C2&num=1&time=30&plat=1&re=0&type=0&so=3&ow=1&spl=3&addr=&db=1'
export proxyUrl='socks5://114.234.144.191:2829'




#// 读取环境变量中的代理地址和端口
#const proxyUrl = process.env.proxyUrl;
#require("global-agent/bootstrap");
#global.GLOBAL_AGENT.HTTP_PROXY=proxyUrl;
