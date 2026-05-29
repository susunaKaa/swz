# 个人主页

一个使用 Jekyll 构建的现代化个人主页和博客系统。

## 快速开始

### 前置要求

- Ruby 2.5.0 或更高版本
- RubyGems
- GCC 和 Make

### 安装

1. 克隆仓库：

```bash
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io
```

2. 安装依赖：

```bash
bundle install
```

3. 本地运行：

```bash
bundle exec jekyll serve
```

4. 访问 `http://localhost:4000` 查看网站。

## 项目结构

```
├── _config.yml          # 网站配置文件
├── _layouts/            # 页面布局模板
│   ├── default.html     # 默认布局
│   ├── page.html        # 普通页面布局
│   ├── post.html        # 博客文章布局
│   └── project.html     # 项目页面布局
├── _includes/           # 可复用的页面组件
│   ├── header.html      # 页面头部
│   └── footer.html      # 页面底部
├── _sass/               # Sass 样式文件
│   └── main.scss        # 主样式文件
├── _posts/              # 博客文章
├── _projects/           # 项目展示
├── assets/              # 静态资源
│   ├── css/             # CSS 文件
│   ├── js/              # JavaScript 文件
│   └── images/          # 图片资源
├── index.html           # 首页
├── about.md             # 关于页面
├── projects.html        # 项目列表页
├── blog.html            # 博客列表页
└── contact.md           # 联系页面
```

## 自定义配置

### 修改个人信息

编辑 `_config.yml` 文件，修改以下配置：

```yaml
title: 你的名字
description: 你的个人简介
author: 你的名字
email: your.email@example.com
github_username: yourgithub
```

### 添加新文章

在 `_posts` 目录下创建新文件，文件名格式为 `YYYY-MM-DD-title.md`：

```markdown
---
title: "文章标题"
date: 2024-01-01
categories:
  - 分类
tags:
  - 标签
---

文章内容...
```

### 添加新项目

在 `_projects` 目录下创建新文件：

```markdown
---
title: 项目名称
subtitle: 项目副标题
date: 2024-01-01
technologies:
  - 技术1
  - 技术2
demo_url: https://demo-url.com
github_url: https://github.com/username/repo
image: /assets/images/projects/project.jpg
---

项目描述...
```

## 部署到 GitHub Pages

1. 在 GitHub 上创建名为 `yourusername.github.io` 的仓库
2. 推送代码到 main 分支
3. 在仓库设置中启用 GitHub Pages
4. 选择 main 分支作为源
5. 几分钟后访问 `https://yourusername.github.io`

## 技术栈

- [Jekyll](https://jekyllrb.com/) - 静态网站生成器
- [Sass](https://sass-lang.com/) - CSS 预处理器
- [Font Awesome](https://fontawesome.com/) - 图标库
- [Google Fonts](https://fonts.google.com/) - 字体服务

## 功能特性

- ✅ 响应式设计，支持各种设备
- ✅ 现代化的 UI 设计
- ✅ 项目展示功能
- ✅ 博客系统
- ✅ SEO 优化
- ✅ 快速加载
- ✅ 易于自定义

## 许可证

MIT License

## 联系方式

如有问题或建议，欢迎通过以下方式联系：

- Email: your.email@example.com
- GitHub: [@yourusername](https://github.com/yourusername)
