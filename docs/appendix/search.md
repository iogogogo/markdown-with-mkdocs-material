
## **中文搜索**

官方中文搜索介绍：[chinese-language-support](https://squidfunk.github.io/mkdocs-material/setup/setting-up-site-search/#chinese-language-support)

~~虽然search功能(lunr.js)暂不直接支持中文，但测试发现设置为日语后，中文和英文搜索都可以使用~~

```text
extra:
  search:
    language: 'jp'
```

!!! note
     ~~测试发现，当站点文字比较多的时候，有的时候第一次搜索加载查询的时间比较久，会引起浏览器假死，多等一会就行了。比如本站点内容比较多，搜索就比较卡~~

     ~~为什么上面说的是有的时候，因为我的另一个站点文字数量比本站还要多，但搜索确很快，等以后熟悉了lunr.js后再来解决这个问题~~


## **中文主题**

另外，搜索对话框的显示文字，默认为英文，可以设置为中文。例如"search"改为中文后就叫"搜索"

```text
theme:
  language: 'zh'
```
