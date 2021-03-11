# 【Java Web核心开发】13.MVC架构

## Model 1：



![1576148107962](C:\Users\yons\AppData\Roaming\Typora\typora-user-images\1576148107962.png)

好处：开发简单，便捷



坏处：

1）.“非常散乱” Decentralized(去中心化的设计)

2）.不好做扩展

3）tag



## Model 2

![1576194669122](C:\Users\yons\AppData\Roaming\Typora\typora-user-images\1576194669122.png)

1). Model (Java Bean)

2) View(JSP) 

3)Controller (Servlet/Filter)



优点：

1）非常容易导航（Navigation），因为是中央控制（Centralized）

2）非常容易维护

3）Test简单



缺点：

一旦修改需要重新编译与部署