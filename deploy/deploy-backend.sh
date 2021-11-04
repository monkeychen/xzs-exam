#!/usr/bin/env bash


cd /Users/chenzhian/workspace/Java/xzs-exam

rm -f /env/apps/exam/exam-backend.jar
cp ./backend/target/exam-backend.jar /env/apps/exam/exam-backend.jar

nohup java -Duser.timezone=Asia/Shanghai -jar -Dspring.profiles.active=prod /env/apps/exam/exam-backend.jar > /env/apps/exam/logs/console.log 2>&1 &