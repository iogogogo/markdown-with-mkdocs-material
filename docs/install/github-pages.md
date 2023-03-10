通过mkdocs gh-deploy自动编译出html并发布至GitHub pages

## **初始化repo - GitHub部署**

这个对于希望在github上展示项目文档非常非常方便，简直好用到爆炸。

1. 首先将写好的源码程序上传到github
2. 然后将项目clone下来，进入你的项目目录，先将site/加入.gitignore忽略文件中
3. 修改一下配置文件mkdocs.yml把site_name改成自己项目的名称
4. 然后执行 `mkdocs gh-deploy --clean`

    ```shell
    echo 'site' >> .gitignore
    git clone git@github.com:iogogogo/markdown-with-mkdocs-material.git
    mkdocs gh-deploy --clean

    ```

`mkdocs gh-deploy --clean` 这个命令会在github项目上创建一个gh-pages分支，并将当前目录中的 `site/` 目录下的内容推送到远程的`gh-pages`分支。 然后就可以在你访问你的文档了地址`https://{username}.github.io/{projectname}`


注意github可能需要等待几分钟才能看到页面，有一点缓存时间。


后面文档编写就放到docs目录下编写即可，每次更新文档后上传，进入docs目录，然后执行一行命令即可：

```shell
mkdocs gh-deploy --clean
```
