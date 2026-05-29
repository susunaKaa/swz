# Docker 开发环境使用指南

## 📋 概述

本项目使用 Docker 容器来运行 Jekyll 开发环境，无需在本机安装 Ruby 和 Jekyll。

## 🚀 快速开始

### 前置要求

确保你的系统已安装：
- **Docker Desktop** (Windows/Mac) 或 **Docker Engine** (Linux)
- **Docker Compose**

#### 安装 Docker Desktop (Windows)

1. 访问 https://www.docker.com/products/docker-desktop
2. 下载并安装 Docker Desktop
3. 启动 Docker Desktop
4. 验证安装：
   ```powershell
   docker --version
   docker-compose --version
   ```

### 启动 Jekyll 服务器

#### 方式一：使用官方镜像（推荐，最简单）

```powershell
# 启动 Jekyll 服务器（前台运行）
docker-compose up

# 或者后台运行
docker-compose up -d

# 查看日志
docker-compose logs -f
```

访问 `http://localhost:4000` 查看网站。

#### 方式二：使用自定义 Dockerfile

如果你想自定义环境，可以使用 Dockerfile：

```powershell
# 构建自定义镜像
docker build -t my-jekyll .

# 运行容器
docker run -p 4000:4000 -v ${PWD}:/srv/jekyll my-jekyll
```

### 停止服务

```powershell
# 停止服务（如果在前台运行，按 Ctrl+C）
# 或者
docker-compose down

# 停止并删除卷
docker-compose down -v
```

## 🔧 常用命令

### 开发命令

```powershell
# 启动服务（后台运行）
docker-compose up -d

# 查看运行状态
docker-compose ps

# 查看日志
docker-compose logs -f jekyll

# 重启服务
docker-compose restart

# 停止服务
docker-compose stop

# 完全停止并清理
docker-compose down
```

### Jekyll 命令

```powershell
# 构建网站
docker-compose run --rm jekyll build

# 构建生产环境版本
docker-compose run --rm jekyll build --config _config.yml

# 清理构建文件
docker-compose run --rm jekyll clean

# 创建新文章
docker-compose run --rm jekyll post "文章标题"

# 创建新页面
docker-compose run --rm jekyll page "页面名称"
```

### 依赖管理

```powershell
# 安装依赖
docker-compose run --rm jekyll bundle install

# 更新依赖
docker-compose run --rm jekyll bundle update

# 检查依赖
docker-compose run --rm jekyll bundle check
```

### 进入容器

```powershell
# 进入容器的 bash shell
docker-compose exec jekyll bash

# 或者使用 sh
docker-compose exec jekyll sh

# 在容器内执行命令
docker-compose exec jekyll jekyll --version
```

## 📁 目录挂载说明

Docker Compose 配置将当前目录挂载到容器的 `/srv/jekyll`：

```
本机目录                     容器目录
c:\Users\swz\...\zip   →   /srv/jekyll
```

这意味着：
- ✅ 在本机编辑文件，容器内自动同步
- ✅ Jekyll 自动检测文件变化并重新编译
- ✅ 生成的 `_site` 目录会同步到本机

## 🐛 常见问题

### Q: 端口 4000 被占用？

**A:** 修改 `docker-compose.yml` 中的端口映射：

```yaml
ports:
  - "4001:4000"  # 使用 4001 端口
```

然后访问 `http://localhost:4001`

### Q: 文件权限问题？

**A:** 在 Windows 上使用 Docker Desktop 通常不会有权限问题。如果遇到，可以尝试：

```powershell
# 在容器内修改权限
docker-compose exec jekyll chmod -R 755 /srv/jekyll
```

### Q: Jekyll 编译错误？

**A:** 检查以下内容：

```powershell
# 查看详细错误日志
docker-compose logs jekyll

# 重新安装依赖
docker-compose run --rm jekyll bundle install

# 清理缓存并重新构建
docker-compose run --rm jekyll clean
docker-compose down -v
docker-compose up
```

### Q: 如何更新 Jekyll 版本？

**A:** 修改 `docker-compose.yml` 中的镜像版本：

```yaml
image: jekyll/jekyll:4.4  # 更新到 4.4 版本
```

然后重新启动：

```powershell
docker-compose down
docker-compose pull
docker-compose up
```

### Q: 网站加载很慢？

**A:** 可能是文件监听导致的性能问题。可以尝试：

1. 使用 `--incremental` 参数（已配置）
2. 减少监听的文件数量
3. 使用 Docker 的性能优化选项

### Q: 如何在容器内运行其他命令？

**A:** 使用 `docker-compose run`：

```powershell
# 运行任意命令
docker-compose run --rm jekyll <命令>

# 例如：查看 Ruby 版本
docker-compose run --rm jekyll ruby --version

# 例如：查看 Jekyll 版本
docker-compose run --rm jekyll jekyll --version
```

## 🎯 工作流程

### 开发流程

1. **启动服务**：
   ```powershell
   docker-compose up -d
   ```

2. **编辑文件**：
   - 在本机使用你喜欢的编辑器（VS Code、Sublime 等）
   - 保存文件后，Jekyll 会自动重新编译

3. **预览网站**：
   - 访问 `http://localhost:4000`
   - 刷新浏览器查看更新

4. **停止服务**：
   ```powershell
   docker-compose down
   ```

### 生产构建

```powershell
# 构建生产环境版本
docker-compose run --rm jekyll build --config _config.yml

# 生成的文件在 _site 目录
# 将 _site 目录部署到服务器
```

## 📊 性能优化

### 使用卷缓存

`docker-compose.yml` 中配置了 `jekyll_cache` 卷来缓存 Ruby gems：

```yaml
volumes:
  jekyll_cache:
```

这样可以避免每次启动都重新安装依赖。

### 增量构建

Jekyll 的 `--incremental` 参数已启用，只重新构建修改的文件：

```yaml
command: jekyll serve --watch --force_polling --incremental
```

## 🔍 调试技巧

### 查看容器状态

```powershell
# 查看运行中的容器
docker ps

# 查看容器详细信息
docker inspect jekyll-dev

# 查看容器资源使用
docker stats jekyll-dev
```

### 进入容器调试

```powershell
# 进入容器
docker-compose exec jekyll bash

# 在容器内
ls -la              # 查看文件
jekyll --version    # 查看 Jekyll 版本
ruby --version      # 查看 Ruby 版本
bundle list         # 查看已安装的 gems
```

## 📚 相关资源

- [Jekyll 官方文档](https://jekyllrb.com/docs/)
- [Jekyll Docker 镜像](https://hub.docker.com/r/jekyll/jekyll)
- [Docker 官方文档](https://docs.docker.com/)
- [Docker Compose 文档](https://docs.docker.com/compose/)

## 🎉 完成！

现在你可以使用 Docker 来运行 Jekyll 开发环境了：

```powershell
# 启动服务
docker-compose up -d

# 访问网站
# http://localhost:4000

# 停止服务
docker-compose down
```

享受无需安装任何依赖的开发体验！🚀
