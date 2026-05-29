---
title: "我的 Jekyll 博客搭建之旅"
date: 2024-01-20
author: Your Name
categories:
  - 技术
  - Jekyll
tags:
  - Jekyll
  - GitHub Pages
  - 博客
excerpt: 记录我使用 Jekyll 搭建个人博客的完整过程，从环境配置到部署上线的所有步骤。
---

最近，我决定搭建一个属于自己的个人博客。经过一番调研，我选择了 Jekyll + GitHub Pages 的方案。在这篇文章中，我将分享整个搭建过程。

## 为什么选择 Jekyll？

在决定使用 Jekyll 之前，我考虑过多种方案：

1. **WordPress**：功能强大，但需要服务器和数据库
2. **Hexo**：基于 Node.js，生态丰富
3. **Hugo**：构建速度快，但模板语法需要学习
4. **Jekyll**：GitHub Pages 原生支持，部署简单

最终选择 Jekyll 的原因：
- GitHub Pages 原生支持，无需额外配置
- 使用 Markdown 写作，简单高效
- 静态网站，访问速度快
- 社区活跃，主题丰富

## 环境准备

首先需要安装 Ruby 环境。在 macOS 上，可以使用 Homebrew：

```bash
brew install ruby
```

在 Windows 上，可以使用 RubyInstaller。

安装完成后，安装 Jekyll 和 Bundler：

```bash
gem install jekyll bundler
```

## 创建项目

使用 Jekyll 命令创建新项目：

```bash
jekyll new myblog
cd myblog
```

项目结构如下：

```
myblog/
├── _config.yml
├── _posts/
├── _layouts/
├── _includes/
├── _sass/
├── assets/
└── index.html
```

## 本地预览

运行以下命令启动本地服务器：

```bash
bundle exec jekyll serve
```

访问 `http://localhost:4000` 即可预览网站。

## 自定义主题

我选择了自己开发主题，这样可以完全按照自己的想法设计。主要工作包括：

1. **设计布局**：创建 default、post、page 等布局
2. **编写样式**：使用 Sass 编写模块化的 CSS
3. **添加交互**：使用 JavaScript 增强用户体验

## 部署到 GitHub Pages

### 1. 创建仓库

在 GitHub 上创建一个名为 `username.github.io` 的仓库。

### 2. 推送代码

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/username.github.io.git
git push -u origin main
```

### 3. 配置 GitHub Pages

在仓库设置中，启用 GitHub Pages，选择 main 分支作为源。

几分钟后，访问 `https://username.github.io` 就能看到你的博客了！

## 遇到的问题

### 问题 1：插件兼容性

某些 Jekyll 插件在 GitHub Pages 上不被支持。

**解决方案**：使用 GitHub Pages 支持的插件，或者使用 GitHub Actions 进行构建。

### 问题 2：样式加载失败

部署后发现样式文件加载失败。

**解决方案**：检查 `_config.yml` 中的 `baseurl` 配置，确保路径正确。

## 总结

通过这次搭建，我学到了：

- Jekyll 的基本使用方法
- 静态网站生成器的工作原理
- Git 和 GitHub Pages 的使用
- 前端开发的最佳实践

搭建个人博客不仅是一个技术实践，更是一个持续学习和分享的过程。希望这篇文章对你有所帮助！

如果你有任何问题，欢迎在评论区留言讨论。
