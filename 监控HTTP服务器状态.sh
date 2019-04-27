#!/bin/bash 
#curl是灰常强大的·······
#by dr
url=http://176.4.11.116/index.html 
 
#‐m 设置 curl 不管访问成功或失败,最大消耗的时间为 5 秒,5 秒连接服务为相应则视为无法连接 
#‐s 设置静默连接,不显示连接时的连接速度、时间消耗等信息 
#‐o 将 curl 下载的页面内容导出到/dev/null(默认会在屏幕显示页面内容) 
#‐w 设置 curl 命令需要显示的内容%{http_code},指定 curl 返回服务器的状态码 
check_http(){ 
status_code=`curl -m 5 ‐o /dev/null -s ‐w %{http_code} ${url}`
} 
 
while : 
do 
  check_http 
  date=$(date +%Y%m%d‐%H:%M:%S)  
#生成报警邮件的内容 
  echo "当前时间为:$date 
  $url 服务器异常,状态码为${status_code}. 
  请尽快排查异常." # > /tmp/http$$.pid 
  
#指定测试服务器状态的函数,并根据返回码决定是发送邮件报警还是将正常信息写入日志 
if [ ${status_code} -ne 200 ];then 
  
mail ‐s Warning root < /tmp/http$$.pid 
  else 
  
echo "$url 连接正常" >> ./http.log 
  fi 
  sleep 1
done
