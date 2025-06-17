# 部署指南：将税务审计AI助手部署到您自己的域名

本指南将帮助您将税务审计AI助手网站部署到您自己的域名上。

## 前提条件

1. 一个已注册的域名
2. 一个网站托管服务（如Vercel、Netlify、AWS Amplify、GitHub Pages等）
3. Node.js和npm（或yarn、bun）已安装在您的计算机上

## 部署步骤

### 方法1：使用Vercel部署（推荐）

Vercel是一个流行的前端部署平台，非常适合React应用。

1. 创建一个[Vercel账户](https://vercel.com/signup)（如果您还没有）
2. 安装Vercel CLI：
   ```bash
   npm install -g vercel
   ```
3. 在项目根目录下运行：
   ```bash
   vercel login
   vercel
   ```
4. 按照提示完成部署
5. 部署完成后，您可以在Vercel仪表板中将您的自定义域名添加到项目中

### 方法2：使用Netlify部署

1. 创建一个[Netlify账户](https://app.netlify.com/signup)
2. 安装Netlify CLI：
   ```bash
   npm install -g netlify-cli
   ```
3. 在项目根目录下构建您的项目：
   ```bash
   npm run build
   ```
4. 部署到Netlify：
   ```bash
   netlify deploy
   ```
5. 按照提示完成部署
6. 部署完成后，您可以在Netlify仪表板中将您的自定义域名添加到项目中

### 方法3：使用GitHub Pages部署

1. 在package.json中添加homepage字段，指向您的GitHub Pages URL：
   ```json
   "homepage": "https://yourusername.github.io/tax-audit-ai-nexus"
   ```
2. 安装gh-pages包：
   ```bash
   npm install --save-dev gh-pages
   ```
3. 在package.json的scripts部分添加部署脚本：
   ```json
   "scripts": {
     "predeploy": "npm run build",
     "deploy": "gh-pages -d dist"
   }
   ```
4. 部署到GitHub Pages：
   ```bash
   npm run deploy
   ```
5. 在GitHub仓库设置中，配置GitHub Pages使用gh-pages分支

### 方法4：手动部署到任何Web服务器

1. 构建您的项目：
   ```bash
   npm run build
   ```
2. 构建完成后，`dist`目录包含了所有静态文件
3. 将`dist`目录中的所有文件上传到您的Web服务器
4. 配置您的Web服务器，将所有请求路由到index.html（对于SPA应用）

## 配置自定义域名

无论您选择哪种部署方法，配置自定义域名的步骤大致相同：

1. 在您的域名注册商控制面板中，添加DNS记录：
   - 如果使用Vercel/Netlify：添加CNAME记录，指向您的Vercel/Netlify应用URL
   - 如果使用自己的服务器：添加A记录，指向您服务器的IP地址
2. 在您的部署平台（Vercel/Netlify等）中添加自定义域名
3. 等待DNS传播（可能需要几分钟到48小时）

## 环境变量配置（如果需要）

如果您的应用使用环境变量，请确保在部署平台上配置这些变量：

1. 在Vercel/Netlify仪表板中，找到环境变量设置
2. 添加您的应用所需的环境变量
3. 重新部署应用以应用这些变量

## 故障排除

如果您在部署过程中遇到问题：

1. 检查构建日志以查找错误
2. 确保所有依赖项都已正确安装
3. 验证您的DNS配置是否正确
4. 检查您的部署平台是否支持单页应用（SPA）路由

## 后续维护

部署后，您可能需要：

1. 设置CI/CD流程以自动部署更新
2. 配置HTTPS（大多数现代部署平台默认提供）
3. 设置监控和分析工具
4. 定期更新依赖项以修复安全漏洞