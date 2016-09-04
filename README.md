# docker-httpsqs 

[![Build Status](https://travis-ci.org/ety001/docker-httpsqs.svg?branch=master)](https://travis-ci.org/ety001/docker-httpsqs)

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

Pull the docker

```
docker pull ety001/httpsqs
```

