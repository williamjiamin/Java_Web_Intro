# 【Java Web核心开发】5.部署Deployment

1.最开始的时候，我们的开发是在本地的IDE里面进行开发的，如果需要访问，本质上也是IDE集成了服务器，然后我们自己访问自己，localhost

2.也就是说我们现在不需要通过IDE去将Tomcat服务器跑起来，而是直接通过运行Tomcat服务器，将我们的项目跑起来

3.接下来要做的就是将我们的项目“放到”Tomcat服务器中

我们可以将文件进行打包（Java Archive——JAR），把这些文件放到Tomcat目录下，这样我们就可以直接通过运行Tomcat进行访问我们的网站了

4.WAR（Web application ARchive）*注意，在通过WAR文件进行部署的时候，不能在程序运行的时候进行修改——所以，即使做一个非常小的修改，也需要重新生成WAR文件以及重新部署。





操作：必备工具PuTTY(做SSH连接)，PSCP做传输

1.安装JDK环境：

1)官网下载（OpenJDK）推荐下载到本地

2）通过pscp.exe+powershell将JDK粘贴到服务器,并安装，配置好环境变量（参见本地开发配置，修改/etc/profile文件）

2.安装Tomcat:

1）官网下载（Tomcat）推荐下载到本地

2）通过pscp.exe+powershell将Tomcat粘贴到服务器

3）启动startup.sh

3.防火墙与安全组：

1）防火墙：

```markdown
查看防火墙状态

firewall-cmd    --state

启动防火墙

systemctl  start   firewalld.service

关闭防火墙
systemctl  stop   firewalld.service

重启防火墙

firewall-cmd --reload

禁止开机启动启动防火墙

systemctl   disable   firewalld.service

开放3306端口

firewall-cmd --zone=public --add-port=3306/tcp --permanent

查看防火墙开放端口集合

firewall-cmd --zone=public --list-ports
```

2）以阿里云为例，调整安全组，开放端口

| 允许 | 自定义 TCP | 8080/8080 | IPv4地址段访问 | 0.0.0.0/0 | -    | 1    |
| ---- | ---------- | --------- | -------------- | --------- | ---- | ---- |
|      |            |           |                |           |      |      |





