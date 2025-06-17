#!/bin/bash

echo "税务审计AI助手部署脚本"
echo "============================"
echo "请选择部署方式:"
echo "1. 构建项目（生成静态文件）"
echo "2. 使用Vercel部署"
echo "3. 使用Netlify部署"
echo "4. 使用GitHub Pages部署"
echo "5. 退出"

read -p "请输入选项 (1-5): " choice

case $choice in
  1)
    echo "正在构建项目..."
    npm run build
    echo "构建完成！静态文件位于dist目录中。"
    ;;
  2)
    echo "正在使用Vercel部署..."
    npm install -g vercel
    npm run deploy:vercel
    ;;
  3)
    echo "正在使用Netlify部署..."
    npm install -g netlify-cli
    npm run deploy:netlify
    ;;
  4)
    echo "正在使用GitHub Pages部署..."
    npm install --save-dev gh-pages
    npm run deploy:gh-pages
    ;;
  5)
    echo "退出部署脚本"
    exit 0
    ;;
  *)
    echo "无效选项，请重新运行脚本。"
    exit 1
    ;;
esac