# 税务审计AI助手

## 项目简介

税务审计AI助手是一个智能税务审计解决方案，帮助税务专业人员提高审计效率和准确性。

## 使用Vercel部署到自己的域名（无需GitHub）

1. 访问 [Vercel官网](https://vercel.com) 并登录
2. 点击"Add New..." > "Project"
3. 在页面底部找到"Upload"选项
4. 将整个项目文件夹压缩为ZIP文件并上传
5. 配置项目：
   - 框架预设：选择"Vite"
   - 构建命令：`npm run build`
   - 输出目录：`dist`
6. 点击"Deploy"
7. 部署完成后，在"Settings" > "Domains"中添加您的自定义域名

详细步骤请参阅 [vercel-deploy-guide.md](./vercel-deploy-guide.md)

## 技术栈

本项目使用以下技术构建：

- Vite
- TypeScript
- React
- shadcn-ui
- Tailwind CSS

## 本地开发

如果您想在本地开发此项目，需要先安装Node.js和npm：

1. 从 [Node.js官网](https://nodejs.org/) 下载并安装Node.js
2. 安装完成后，打开命令提示符并运行以下命令：

```sh
# 验证安装
node --version
npm --version

# 进入项目目录
cd tax-audit-ai-nexus-main

# 安装依赖
npm install

# 启动开发服务器
npm run dev
```

## 环境变量配置

1. 复制 `.env.example` 文件并重命名为 `.env`
2. 根据您的需求编辑 `.env` 文件中的变量

## 许可证

[MIT](LICENSE)