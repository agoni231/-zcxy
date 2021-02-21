#!/bin/sh
sh /usr/local/bin/FastGateServer.sh restart >> /home/famylog.log  2>&1

# 2>&1 
# 2指执行后程序不成功的报错，1指程序执行成功后的正确信息
# 全意指 将错误信息转变成标准输出(也就是说就算执行失败，也要展示失败的报错)，这样就可以将错误信息输出到out.log 日志里面来