#!/usr/bin/env bash


cd /Users/chenzhian/workspace/Java/xzs-exam

rm -f /env/apps/exam/exam-backend.jar
cp ./backend/target/exam-backend.jar /env/apps/exam/exam-backend.jar

cd /env/apps/exam
nohup java -Duser.timezone=Asia/Shanghai -jar /env/apps/exam/exam-backend.jar --spring.config.location=./application.yml > /env/apps/exam/logs/console.log 2>&1 &