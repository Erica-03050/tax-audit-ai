@echo off
echo 税务审计AI助手部署脚本
echo ============================
echo 请选择部署方式:
echo 1. 构建项目（生成静态文件）
echo 2. 使用Vercel部署
echo 3. 使用Netlify部署
echo 4. 使用GitHub Pages部署
echo 5. 退出

set /p choice=请输入选项 (1-5): 

if "%choice%"=="1" (
    echo 正在构建项目...
    call npm run build
    echo 构建完成！静态文件位于dist目录中。
    pause
    goto :eof
)

if "%choice%"=="2" (
    echo 正在使用Vercel部署...
    call npm install -g vercel
    call npm run deploy:vercel
    pause
    goto :eof
)

if "%choice%"=="3" (
    echo 正在使用Netlify部署...
    call npm install -g netlify-cli
    call npm run deploy:netlify
    pause
    goto :eof
)

if "%choice%"=="4" (
    echo 正在使用GitHub Pages部署...
    call npm install --save-dev gh-pages
    call npm run deploy:gh-pages
    pause
    goto :eof
)

if "%choice%"=="5" (
    echo 退出部署脚本
    goto :eof
)

echo 无效选项，请重新运行脚本。
pause