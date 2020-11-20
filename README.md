# Mail-Probe

邮箱探针后台管理系统

# 有师傅反馈有的邮箱带图片地址合法性校验可能需要jpg后缀，已经解决，更新内容在最下方

# 后台登录

![](https://raw.githubusercontent.com/r00tSe7en/Mail-Probe/master/tz0.png)

# 信息查看

![](https://raw.githubusercontent.com/r00tSe7en/Mail-Probe/master/tz1.png)

# 链接生成

![](https://raw.githubusercontent.com/r00tSe7en/Mail-Probe/master/tz2.png)

平常去河边钓鱼，要使用浮漂才会知道这条河是否有鱼吃饵料，同理当邮件投递出去后，此探针可以判断目标是否点击了邮件，不至于那么的苦等。

# 配置相关

> 基于ThinkPHP 6开发

> 运行环境要求Apache和PHP7.1+

>数据库文件为mail.sql

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

# 更新

2020.10.3
修改了`public`目录下的`.htaccess`文件内容为

```
<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteRule ^(.*)$ index.php [L,E=PATH_INFO:$1]
</IfModule>
```
以及修改链接生成结果为
```
http://tp6.com/Info/index/随机6位数.jpg?random=随机6位数&mail=123456@qq.com
```
2020.11.20

处理了Linux下视图文件找不到的问题（修改view模块下文件夹首字母为小写）
待解决：Linux下探针链接访问提示 `Class 'think\Response\Image' not found`
