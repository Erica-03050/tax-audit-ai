# 使用Vercel部署到自己的域名

## 步骤1：安装Vercel CLI

```bash
npm install -g vercel
```

## 步骤2：登录Vercel

```bash
vercel login
```

## 步骤3：部署项目

在项目根目录下运行：

```bash
vercel
```

按照提示操作，通常只需按Enter键接受默认选项即可。

## 步骤4：绑定自定义域名

1. 登录Vercel网站 (https://vercel.com)
2. 选择您刚部署的项目
3. 点击"Settings" > "Domains"
4. 添加您的自定义域名
5. 按照Vercel提供的DNS配置说明，在您的域名注册商处添加相应的DNS记录

## 步骤5：等待DNS生效

DNS更改可能需要几分钟到48小时不等才能完全生效。

## 步骤6：验证部署

访问您的自定义域名，确认网站已正确部署。