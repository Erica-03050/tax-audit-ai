# 通过Vercel网站部署到自己的域名

## 方法1：直接上传项目文件（无需GitHub）

1. 访问 [Vercel官网](https://vercel.com)
2. 点击"Sign Up"注册账户（如果已有账户，点击"Login"登录）
3. 登录后，点击"Add New..."按钮，然后选择"Project"
4. 在页面底部找到"Import Third-Party Git Repository"下方的"Upload"选项
5. 点击"Upload"，然后将您的整个项目文件夹压缩为ZIP文件并上传
6. 配置项目：
   - 框架预设：选择"Vite"
   - 构建命令：`npm run build`
   - 输出目录：`dist`
7. 点击"Deploy"按钮
8. 等待部署完成（通常只需几分钟）
9. 绑定自定义域名：
   - 进入项目仪表板
   - 点击"Settings" > "Domains"
   - 点击"Add"按钮，输入您的域名
   - 按照Vercel提供的DNS配置说明，在您的域名注册商处添加相应的DNS记录

## 方法2：先上传到GitHub再部署（更推荐）

### 步骤1：创建GitHub仓库并上传项目

1. 访问 [GitHub](https://github.com) 并登录
2. 点击右上角"+"图标，选择"New repository"
3. 填写仓库名称（如"tax-audit-ai-nexus"）
4. 选择公开或私有仓库
5. 点击"Create repository"
6. 按照GitHub页面上的指示，将您的本地项目上传到新仓库

### 步骤2：通过Vercel部署GitHub仓库

1. 访问 [Vercel官网](https://vercel.com) 并登录
2. 点击"Add New..." > "Project"
3. 选择"GitHub"作为Git提供商
4. 授权Vercel访问您的GitHub仓库
5. 从列表中选择您刚创建的仓库
6. 配置项目：
   - 框架预设：选择"Vite"
   - 构建命令：`npm run build`
   - 输出目录：`dist`
7. 点击"Deploy"按钮
8. 绑定自定义域名：
   - 进入项目仪表板
   - 点击"Settings" > "Domains"
   - 点击"Add"按钮，输入您的域名
   - 按照Vercel提供的DNS配置说明，在您的域名注册商处添加相应的DNS记录

## 等待DNS生效

DNS更改可能需要几分钟到48小时不等才能完全生效。

## 验证部署

访问您的自定义域名，确认网站已正确部署。

## 注意事项

- 使用GitHub方法部署时，每次您向GitHub仓库推送更改，Vercel会自动重新部署
- 使用直接上传方法时，每次更新都需要重新上传ZIP文件
- 您可以在Vercel仪表板中查看部署历史和日志