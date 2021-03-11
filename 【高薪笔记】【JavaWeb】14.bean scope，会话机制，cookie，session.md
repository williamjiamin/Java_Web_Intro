# 【Java Web核心开发】14.bean scope，会话机制，cookie，session

## 1.会话机制

会话机制本质上可以类比成打电话，电话接通——浏览器与服务器发请求，一旦访问到我们的应用，会话就接通，期间无论发送所有请求，就都视为一次会话



## 2.Cookie,Session

cookie--客户端记录信息，http协议（无状态协议）

session--服务端记录信息，session建立在cookie的基础上，cookie中会储存相应sessionid，这样服务器就知道在服务端储存的大量session中找到你对应的id。