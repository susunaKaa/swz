# GitHub Pages 自动部署指南

## 📋 概述

本项目使用 GitHub Actions 实现自动化部署：
- **main 分支**：存放 Jekyll 源代码
- **gh-pages 分支**：存放编译后的静态网站文件（自动生成）
- **自动化流程**：当 main 分支有更新时，自动编译并部署到 gh-pages 分支

## 🚀 部署步骤

### 第一步：安装必要工具

#### 1. 安装 Git

**Windows:**
1. 访问 https://git-scm.com/download/win
2. 下载并安装 Git
3. 安装完成后，重启终端

**验证安装:**
```powershell
git --version
```

#### 2. 安装 GitHub CLI（可选，但推荐）

**Windows:**
1. 访问 https://cli.github.com/
2. 下载并安装 GitHub CLI
3. 安装完成后，重启终端

**验证安装:**
```powershell
gh --version
```

### 第二步：配置 Git

```powershell
# 设置你的用户名和邮箱
git config --global user.name "你的名字"
git config --global user.email "your.email@example.com"
```

### 第三步：在 GitHub 创建仓库

#### 方式一：使用 GitHub CLI（推荐）

```powershell
# 登录 GitHub
gh auth login

# 创建仓库（替换 yourusername 为你的用户名）
gh repo create yourusername.github.io --public --source=. --remote=origin

# 查看仓库信息
gh repo view
```

#### 方式二：手动创建

1. 访问 https://github.com/new
2. 仓库名称：`yourusername.github.io`（必须使用这个格式）
3. 选择 "Public"
4. **不要**勾选 "Add a README file"
5. **不要**勾选 "Add .gitignore"
6. 点击 "Create repository"

### 第四步：初始化本地仓库并推送代码

```powershell
# 进入项目目录
cd c:\Users\swz\Documents\trae_projects\zip

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 创建第一次提交
git commit -m "Initial commit: Jekyll 个人主页"

# 添加远程仓库（替换 yourusername 为你的 GitHub 用户名）
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 推送到 main 分支
git branch -M main
git push -u origin main
```

### 第五步：配置 GitHub Pages

#### 方式一：使用 GitHub CLI

```powershell
# 启用 GitHub Pages，使用 gh-pages 分支
gh api repos/{owner}/{repo}/pages -X POST -f source='{"branch":"gh-pages","path":"/"}'
```

#### 方式二：手动配置

1. 访问你的 GitHub 仓库页面
2. 点击 "Settings" 标签
3. 在左侧菜单找到 "Pages"
4. 在 "Source" 部分：
   - Branch: 选择 "gh-pages"（等待 GitHub Actions 运行后会出现）
   - Folder: 选择 "/ (root)"
5. 点击 "Save"

### 第六步：触发自动部署

当你推送代码到 main 分支后，GitHub Actions 会自动运行：

```powershell
# 查看 GitHub Actions 运行状态
gh run list

# 查看最新的运行详情
gh run view
```

或者访问 GitHub 仓库的 "Actions" 标签页查看构建进度。

### 第七步：访问你的网站

等待几分钟（通常 2-5 分钟），访问：
```
https://yourusername.github.io
```

## 🔄 日常更新流程

每次修改源代码后，只需要：

```powershell
# 添加修改的文件
git add .

# 提交修改
git commit -m "更新网站内容"

# 推送到 GitHub
git push
```

GitHub Actions 会自动：
1. 检测到 main 分支的更新
2. 编译 Jekyll 网站
3. 将编译结果推送到 gh-pages 分支
4. 更新你的网站

## 📂 分支说明

### main 分支（源代码）
```
├── _config.yml
├── _layouts/
├── _posts/
├── _projects/
├── _sass/
├── assets/
├── .github/
│   └── workflows/
│       └── deploy.yml    # GitHub Actions 配置
└── ...
```

### gh-pages 分支（编译产物，自动生成）
```
├── index.html
├── about/
├── projects/
├── blog/
├── assets/
│   ├── css/
│   └── js/
└── ...
```

## ⚙️ GitHub Actions 工作流程

`.github/workflows/deploy.yml` 文件定义了自动化流程：

1. **触发条件**：
   - 当 main 分支有 push 操作
   - 或手动触发（workflow_dispatch）

2. **构建步骤**：
   - 检出源代码
   - 安装 Ruby 3.2
   - 安装依赖（bundle install）
   - 编译 Jekyll 网站

3. **部署步骤**：
   - 将 `_site` 目录的内容推送到 gh-pages 分支
   - 使用 `peaceiris/actions-gh-pages` action

## 🔧 高级配置

### 自定义域名（可选）

1. 在仓库根目录创建 `CNAME` 文件，内容为你的域名：
   ```
   www.yourdomain.com
   ```

2. 在域名服务商处配置 DNS：
   - 添加 CNAME 记录指向 `yourusername.github.io`

### 修改 _config.yml

编辑 `_config.yml` 文件，更新以下配置：

```yaml
title: 你的名字
description: 你的个人简介
author: 你的名字
email: your.email@example.com
url: "https://yourusername.github.io"
github_username: yourusername
```

## 🐛 常见问题

### Q: GitHub Actions 构建失败？

**A:** 检查以下内容：
1. 查看 Actions 标签页的错误日志
2. 确保 `Gemfile` 和 `Gemfile.lock` 存在
3. 确保 Ruby 版本兼容（推荐 3.2）

### Q: 网站显示 404？

**A:** 检查以下内容：
1. 确认 GitHub Pages 已启用
2. 确认 gh-pages 分支已创建（等待 Actions 运行完成）
3. 确认仓库名称正确：`yourusername.github.io`

### Q: 样式没有加载？

**A:** 检查 `_config.yml` 中的 `url` 和 `baseurl` 配置：
```yaml
url: "https://yourusername.github.io"
baseurl: ""  # 如果是用户名.github.io，保持为空
```

### Q: 如何查看构建日志？

**A:** 
```powershell
# 使用 GitHub CLI
gh run list
gh run view

# 或访问 GitHub 网页
# 仓库 -> Actions -> 选择最近的运行
```

## 📚 相关资源

- [GitHub Pages 文档](https://docs.github.com/en/pages)
- [Jekyll 官方文档](https://jekyllrb.com/docs/)
- [GitHub Actions 文档](https://docs.github.com/en/actions)
- [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages)

## 🎉 完成！

现在你已经完成了：
- ✅ 创建了 GitHub 仓库
- ✅ 配置了 GitHub Actions 自动部署
- ✅ 推送了源代码到 main 分支
- ✅ 自动生成了 gh-pages 分支
- ✅ 启用了 GitHub Pages

你的个人主页现在可以通过 `https://yourusername.github.io` 访问了！
