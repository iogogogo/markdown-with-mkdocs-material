通过mkdocs build编译出html并手动同步至http server的根目录

## **生成站点文件**

---

在git根目录下执行命令

	mkdocs build

命令执行完毕后可以看到site目录

## **发布至http server**

---

将site目录里的所有东西同步至自己的http server的根目录


## **Nginx配置参考**
```nginx
server {
  # 客户端访问端口
  listen       8080;
  # 客户端访问域名
  server_name  127.0.0.1;
  # 静态资源根目录
  root /home/xxx/site;

  gzip_types text/plain application/javascript text/css image/svg+xml;
  gzip_proxied no-cache no-store private expired auth;
  
  gzip_static on;
  #brotli_static on;
  gunzip on;
  
  location = / {
    index index.html;
  }
}

```