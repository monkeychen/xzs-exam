#!/usr/bin/env bash

cd /Users/chenzhian/workspace/Java/xzs-exam/frontend/admin
npm run build

cd /Users/chenzhian/workspace/Java/xzs-exam/frontend/student
npm run build

cd /Users/chenzhian/workspace/Java/xzs-exam

rm -rf /env/apps/exam/nginx/admin
mv ./frontend/admin/dist /env/apps/exam/nginx/admin

rm -rf /env/apps/exam/nginx/student
mv ./frontend/student/dist /env/apps/exam/nginx/student

