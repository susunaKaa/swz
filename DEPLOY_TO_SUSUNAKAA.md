# 部署到 susunaKaa/- 仓库指南

## 📋 概述

本指南将帮助你将 Jekyll 项目部署到 `https://github.com/susunaKaa/-.git` 仓库。

## ⚠️ 重要提示

仓库名称是 `-`，这是一个比较特殊的名称。为了更好地使用 GitHub Pages，建议你：

**选项 1（推荐）**：将仓库重命名为 `susunaKaa.github.io`
- 这样可以直接通过 `https://susunaKaa.github.io` 访问
- 无需配置 `baseurl`

**选项 2**：使用当前仓库名 `-`
- 需要配置 `baseurl` 为 `/-`
- 访问地址会是 `https://susunaKaa.github.io/-/`

---

## 🚀 快速部署步骤

### 第一步：安装 Git

**Windows:**
1. 访问 https://git-scm.com/download/win
2. 下载并安装 Git
3. 重启终端

**验证安装:**
```powershell
git --version
```

### 第二步：配置 Git

```powershell
git config --global user.name "susunaKaa"
git config --global user.email "your.email@example.com"
```

### 第三步：初始化本地仓库

```powershell
cd c:\Users\swz\Documents\trae_projects\zip
git init
git add .
git commit -m "Initial commit: Jekyll 个人主页"
```

### 第四步：添加远程仓库并推送

```powershell
# 添加远程仓库
git remote add origin https://github.com/susunaKaa/-.git

# 推送到 main 分支
git branch -M main
git push -u origin main
```

### 第五步：配置 GitHub Pages

1. 访问 https://github.com/susunaKaa/-/settings/pages
2. 在 "Source" 部分：
   - 选择 "Deploy from a branch"（或者等待 GitHub Actions 自动配置）
   - 选择 "gh-pages" 分支
3. 点击 "Save"

### 第六步：等待部署

- GitHub Actions 会自动运行并构建
- 等待 2-5 分钟
- 访问你的网站

---

## 📦 根据仓库名调整配置

### 方案一：使用推荐的 susunaKaa.github.io（推荐）

#### 1. 重命名仓库
1. 访问 https://github.com/susunaKaa/-/settings
2. 在 "Repository name" 处改为 `susunaKaa.github.io`
3. 点击 "Rename"

#### 2. 更新本地配置

修改 `_config.yml`（已经更新好了）：
```yaml
baseurl: "" 
url: "https://susunaKaa.github.io"
```

#### 3. 更新远程仓库地址
```powershell
git remote set-url origin https://github.com/susunaKaa/susunaKaa.github.io.git
```

#### 4. 推送代码
```powershell
git add .
git commit -m "Update configuration"
git push
```

#### 5. 访问网站
```
https://susunaKaa.github.io
```

---

### 方案二：继续使用当前仓库名 `-`

#### 1. 修改 _config.yml

```yaml
baseurl: "/-"
url: "https://susunaKaa.github.io"
```

#### 2. 提交并推送
```powershell
git add _config.yml
git commit -m "Update baseurl for repository name '-'"
git push
```

#### 3. 访问网站
```
https://susunaKaa.github.io/-/
```

---

## 🔄 更新网站的流程

每次修改代码后，执行：

```powershell
cd c:\Users\swz\Documents\trae_projects\zip

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

---

## 📚 相关文档

- [Docker 开发环境指南](./DOCKER_GUIDE.md)
- [GitHub Actions 自动部署指南](./GITHUB_ACTIONS_GUIDE.md)
- [基础部署指南](./DEPLOY.md)

---

## 💡 快速提示

### 如果是新建仓库

如果 `-` 仓库是空的，直接按照上面的步骤推送即可。

### 如果仓库已有内容

```powershell
# 拉取远程内容（如果有冲突需要解决）
git pull origin main --allow-unrelated-histories

# 然后再推送
git push -u origin main
```

### 如果遇到问题

1. 检查 Git 已正确安装并配置
2. 检查仓库地址是否正确
3. 检查是否有权限访问该仓库
4. 查看 Actions 标签页的构建日志

---

## 🎉 完成！

现在你已经配置好了部署流程！
