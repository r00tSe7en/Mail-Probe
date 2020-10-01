# Mail-Probe

邮件探针后台管理系统

!()[]

# 配置相关

基于ThinkPHP 6开发

数据库及其他配置修改env文件即可，默认为

```
APP_DEBUG = false

[APP]
DEFAULT_TIMEZONE = Asia/Shanghai

[DATABASE]
TYPE = mysql
HOSTNAME = 127.0.0.1
DATABASE = mail
USERNAME = root
PASSWORD = root
HOSTPORT = 3306
CHARSET = utf8
DEBUG = false

[LANG]
default_lang = zh-cn
```

后台默认账号密码（密码修改直接替换库中MD5即可）

```
admin|123456
```

# 感谢
[@c1y2m3](https://github.com/c1y2m3) 分享的思路


