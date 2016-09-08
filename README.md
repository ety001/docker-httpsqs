# docker-httpsqs 

[![Build Status](https://travis-ci.org/ety001/docker-httpsqs.svg?branch=master)](https://travis-ci.org/ety001/docker-httpsqs) [![](https://images.microbadger.com/badges/image/ety001/httpsqs.svg)](http://microbadger.com/images/ety001/httpsqs "Get your own image badge on microbadger.com")

Docker for httpsqs. Detail: <http://code.google.com/p/httpsqs>

```
Author: Zhang Yan (http://blog.s135.com), E-mail: net@s135.com
This is free software, and you are welcome to modify and redistribute it under the New BSD License

-l <ip_addr>  interface to listen on, default is 0.0.0.0
-p <num>      TCP port number to listen on (default: 1218)
-x <path>     database directory (example: /opt/httpsqs/data)
-t <second>   keep-alive timeout for an http request (default: 60)
-s <second>   the interval to sync updated contents to the disk (default: 5)
-c <num>      the maximum number of non-leaf nodes to be cached (default: 1024)
-m <size>     database memory cache size in MB (default: 100)
-i <file>     save PID in <file> (default: /tmp/httpsqs.pid)
-a <auth>     the auth password to access httpsqs (example: mypass123)
-d            run as a daemon
-h            print this help and exit

Use command "killall httpsqs", "pkill httpsqs" and "kill `cat /tmp/httpsqs.pid`" to stop httpsqs.
Please note that don't use the command "pkill -9 httpsqs" and "kill -9 PID of httpsqs"!

Please visit "http://code.google.com/p/httpsqs" for more help information.
```

# Manual for docker-httpsqs

### Pull the docker

```
docker pull ety001/httpsqs
```

### Config

To set the docker environment to add params for `httpsqs`.

```
-l <ip_addr>  -- HTTPSQS_PARAM_L
-p <num>      -- HTTPSQS_PARAM_P
-x <path>     -- HTTPSQS_PARAM_X
-t <second>   -- HTTPSQS_PARAM_T
-s <second>   -- HTTPSQS_PARAM_S
-c <num>      -- HTTPSQS_PARAM_C
-m <size>     -- HTTPSQS_PARAM_M
-i <file>     -- HTTPSQS_PARAM_I
-a <auth>     -- HTTPSQS_PARAM_A
```

### Examples

```
docker run -d -e HTTPSQS_PARAM_A=123456 -e HTTPSQS_PARAM_P=8888 -p 8888:8888 ety001/httpsqs
```

# 使用手册

### 拉取 docker

```
docker pull ety001/httpsqs
```

### 配置 httpsqs 参数

通过设置 `docker` 的环境变量来设置 `httpsqs` 的参数，具体对应关系如下

```
-l <ip_addr>  -- HTTPSQS_PARAM_L
-p <num>      -- HTTPSQS_PARAM_P
-x <path>     -- HTTPSQS_PARAM_X
-t <second>   -- HTTPSQS_PARAM_T
-s <second>   -- HTTPSQS_PARAM_S
-c <num>      -- HTTPSQS_PARAM_C
-m <size>     -- HTTPSQS_PARAM_M
-i <file>     -- HTTPSQS_PARAM_I
-a <auth>     -- HTTPSQS_PARAM_A
```

### 例子

```
docker run -d -e HTTPSQS_PARAM_A=123456 -e HTTPSQS_PARAM_P=8888 -p 8888:8888 ety001/httpsqs
```

---
[My Blog](http://www.domyself.me) | [Donate](http://www.domyself.me/donate) | [License: BSD-3](https://opensource.org/licenses/BSD-3-Clause)
