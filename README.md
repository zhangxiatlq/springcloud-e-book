# springcloud-e-book
## 微服务综合案例的代码已经zuul服务网关的案例代码
+ e-book-*开头的是综合案例的代码
+ zuul-gateway-*开头的zuul案例的代码
+ 带有zipkin 的应用于zipkin监控展示
--- 
# zipkin应用demo

+ 1、 zuul-gateway-filter-zipkin
+ 2、 zipkin-server
+ 3、sleuth-consumer-zipkin
+ 4、sleuth-product-provider-zipkin

>
上述启动后，访问如下地址：
http://localhost:9010/custom/find
然后在下面地址：
http://localhost:9411/zipkin/
查看结果如下：
![Image text](https://raw.githubusercontent.com/zhangxiatlq/springcloud-e-book/master/images/QQ%E6%88%AA%E5%9B%BE20210126161824.jpg)

